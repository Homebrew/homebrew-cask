require 'pathname'
require 'exceptions'
require 'os/mac'
require 'utils/json'
require 'utils/popen'
require 'open-uri'

# :startdoc:

def ohai title, *sput
  title = Tty.truncate(title) if $stdout.tty? && !ARGV.verbose?
  puts "#{Tty.blue}==>#{Tty.white} #{title}#{Tty.reset}"
  puts sput
end

def opoo warning
  $stderr.puts "#{Tty.red}Warning#{Tty.reset}: #{warning}"
end

def onoe error
  $stderr.puts "#{Tty.red}Error#{Tty.reset}: #{error}"
end

# :stopdoc:

def homebrew_fork_system cmd, *args
  puts "#{cmd} #{args*' '}" if ARGV.verbose?
  pid = fork do
    yield if block_given?
    args.collect!{|arg| arg.to_s}
    exec(cmd, *args) rescue nil
    exit! 1 # never gets here unless exec failed
  end
  Process.wait(pid)
  $?.success?
end

# Kernel.system but with exceptions
def safe_system cmd, *args
  homebrew_fork_system(cmd, *args) or raise ErrorDuringExecution.new(cmd, args)
end

# prints no output
def quiet_system cmd, *args
  homebrew_fork_system(cmd, *args) do
    # Redirect output streams to `/dev/null` instead of closing as some programs
    # will fail to execute if they can't write to an open stream.
    $stdout.reopen('/dev/null')
    $stderr.reopen('/dev/null')
  end
end

def curl *args
  curl = Pathname.new '/usr/bin/curl'
  raise "#{curl} is not executable" unless curl.exist? and curl.executable?

  flags = HOMEBREW_CURL_ARGS
  flags = flags.delete("#") if ARGV.verbose?

  args = [flags, HOMEBREW_USER_AGENT, *args]
  # See https://github.com/Homebrew/homebrew/issues/6103
  args << "--insecure" if MacOS.version < "10.6"
  args << "--verbose" if ENV['HOMEBREW_CURL_VERBOSE']
  args << "--silent" unless $stdout.tty?

  safe_system curl, *args
end

def puts_columns items, star_items=[]
  return if items.empty?

  if star_items && star_items.any?
    items = items.map{|item| star_items.include?(item) ? "#{item}*" : item}
  end

  if $stdout.tty?
    # determine the best width to display for different console sizes
    console_width = `/bin/stty size`.chomp.split(" ").last.to_i
    console_width = 80 if console_width <= 0
    longest = items.sort_by { |item| item.length }.last
    optimal_col_width = (console_width.to_f / (longest.length + 2).to_f).floor
    cols = optimal_col_width > 1 ? optimal_col_width : 1

    IO.popen("/usr/bin/pr -#{cols} -t -w#{console_width}", "w"){|io| io.puts(items) }
  else
    puts items
  end
end

def which cmd, path=ENV['PATH']
  path.split(File::PATH_SEPARATOR).each do |p|
    pcmd = File.expand_path(cmd, p)
    return Pathname.new(pcmd) if File.file?(pcmd) && File.executable?(pcmd)
  end
  return nil
end

def which_editor
  editor = ENV.values_at('HOMEBREW_EDITOR', 'VISUAL', 'EDITOR').compact.first
  # If an editor wasn't set, try to pick a sane default
  return editor unless editor.nil?

  # Find Textmate
  return 'mate' if which "mate"
  # Find BBEdit / TextWrangler
  return 'edit' if which "edit"
  # Find vim
  return 'vim' if which "vim"
  # Default to standard vim
  return '/usr/bin/vim'
end

def exec_editor *args
  safe_exec(which_editor, *args)
end

def safe_exec cmd, *args
  # This buys us proper argument quoting and evaluation
  # of environment variables in the cmd parameter.
  exec "/bin/sh", "-c", "#{cmd} \"$@\"", "--", *args
end

# GZips the given paths, and returns the gzipped paths
def gzip *paths
  paths.collect do |path|
    safe_system '/usr/bin/gzip', path
    Pathname.new("#{path}.gz")
  end
end

def ignore_interrupts(opt = nil)
  std_trap = trap("INT") do
    puts "One sec, just cleaning up" unless opt == :quietly
  end
  yield
ensure
  trap("INT", std_trap)
end

def paths
  @paths ||= ENV['PATH'].split(File::PATH_SEPARATOR).collect do |p|
    begin
      File.expand_path(p).chomp('/')
    rescue ArgumentError
      onoe "The following PATH component is invalid: #{p}"
    end
  end.uniq.compact
end

module GitHub extend self
  ISSUES_URI = URI.parse("https://api.github.com/search/issues")

  Error = Class.new(RuntimeError)
  HTTPNotFoundError = Class.new(Error)

  class RateLimitExceededError < Error
    def initialize(reset, error)
      super <<-EOS.undent
        GitHub #{error}
        Try again in #{pretty_ratelimit_reset(reset)}, or create an API token:
          https://github.com/settings/applications
        and then set HOMEBREW_GITHUB_API_TOKEN.
        EOS
    end

    def pretty_ratelimit_reset(reset)
      if (seconds = Time.at(reset) - Time.now) > 180
        "%d minutes %d seconds" % [seconds / 60, seconds % 60]
      else
        "#{seconds} seconds"
      end
    end
  end

  class AuthenticationFailedError < Error
    def initialize(error)
      super <<-EOS.undent
        GitHub #{error}
        HOMEBREW_GITHUB_API_TOKEN may be invalid or expired, check:
          https://github.com/settings/applications
        EOS
    end
  end

  def open url, headers={}, &block
    # This is a no-op if the user is opting out of using the GitHub API.
    return if ENV['HOMEBREW_NO_GITHUB_API']

    safely_load_net_https

    default_headers = {
      "User-Agent" => HOMEBREW_USER_AGENT,
      "Accept"     => "application/vnd.github.v3+json",
    }

    default_headers['Authorization'] = "token #{HOMEBREW_GITHUB_API_TOKEN}" if HOMEBREW_GITHUB_API_TOKEN

    begin
      Kernel.open(url, default_headers.merge(headers)) do |f|
        yield Utils::JSON.load(f.read)
      end
    rescue OpenURI::HTTPError => e
      handle_api_error(e)
    rescue SocketError, OpenSSL::SSL::SSLError => e
      raise Error, "Failed to connect to: #{url}\n#{e.message}", e.backtrace
    rescue Utils::JSON::Error => e
      raise Error, "Failed to parse JSON response\n#{e.message}", e.backtrace
    end
  end

  def handle_api_error(e)
    if e.io.meta["x-ratelimit-remaining"].to_i <= 0
      reset = e.io.meta.fetch("x-ratelimit-reset").to_i
      error = Utils::JSON.load(e.io.read)["message"]
      raise RateLimitExceededError.new(reset, error)
    end

    case e.io.status.first
    when "401", "403"
      raise AuthenticationFailedError.new(e.message)
    when "404"
      raise HTTPNotFoundError, e.message, e.backtrace
    else
      raise Error, e.message, e.backtrace
    end
  end

  def issues_matching(query, qualifiers={})
    uri = ISSUES_URI.dup
    uri.query = build_query_string(query, qualifiers)
    open(uri) { |json| json["items"] }
  end

  def build_query_string(query, qualifiers)
    s = "q=#{uri_escape(query)}+"
    s << build_search_qualifier_string(qualifiers)
    s << "&per_page=100"
  end

  def build_search_qualifier_string(qualifiers)
    {
      :repo => "Homebrew/homebrew",
      :in => "title",
    }.update(qualifiers).map { |qualifier, value|
      "#{qualifier}:#{value}"
    }.join("+")
  end

  def uri_escape(query)
    if URI.respond_to?(:encode_www_form_component)
      URI.encode_www_form_component(query)
    else
      require "erb"
      ERB::Util.url_encode(query)
    end
  end

  def issues_for_formula name
    issues_matching(name, :state => "open")
  end

  def print_pull_requests_matching(query)
    return [] if ENV['HOMEBREW_NO_GITHUB_API']
    puts "Searching pull requests..."

    open_or_closed_prs = issues_matching(query, :type => "pr")

    open_prs = open_or_closed_prs.select {|i| i["state"] == "open" }
    if open_prs.any?
      puts "Open pull requests:"
      prs = open_prs
    elsif open_or_closed_prs.any?
      puts "Closed pull requests:"
      prs = open_or_closed_prs
    else
      return
    end

    prs.each { |i| puts "#{i["title"]} (#{i["html_url"]})" }
  end

  def private_repo?(user, repo)
    uri = URI.parse("https://api.github.com/repos/#{user}/#{repo}")
    open(uri) { |json| json["private"] }
  end

  private

  # If the zlib formula is loaded, TypeError will be raised when we try to load
  # net/https. This monkeypatch prevents that and lets Net::HTTP fall back to
  # the non-gzip codepath.
  def safely_load_net_https
    return if defined?(Net::HTTP)
    if defined?(Zlib) && RUBY_VERSION >= "1.9"
      require "net/protocol"
      http = Class.new(Net::Protocol) do
        def self.require(lib)
          raise LoadError if lib == "zlib"
          super
        end
      end
      Net.const_set(:HTTP, http)
    end
    require "net/https"
  end
end
