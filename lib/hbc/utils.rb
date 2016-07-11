module Hbc::Utils; end

require "yaml"
require "open3"
require "stringio"

require "hbc/utils/tty"

UPDATE_CMD = "brew uninstall --force brew-cask; brew untap phinze/cask; brew untap caskroom/cask; brew update; brew cleanup; brew cask cleanup".freeze
ISSUES_URL = "https://github.com/caskroom/homebrew-cask#reporting-bugs".freeze

# TODO: temporary
Tty = Hbc::Utils::Tty

# monkeypatch Object - not a great idea
class Object
  def utf8_inspect
    return inspect unless defined?(Encoding)
    return map(&:utf8_inspect) if respond_to?(:map)
    inspect.force_encoding("UTF-8").sub(%r{\A"(.*)"\Z}, '\1')
  end
end

class Buffer < StringIO
  def initialize(tty = false)
    super()
    @tty = tty
  end

  def tty?
    @tty
  end
end

# global methods

# originally from Homebrew
def ohai(title, *sput)
  title = Tty.truncate(title) if $stdout.tty? && !Hbc.verbose
  puts "#{Tty.blue.bold}==>#{Tty.reset.bold} #{title}#{Tty.reset}"
  puts sput unless sput.empty?
end

# originally from Homebrew
def opoo(warning)
  $stderr.puts "#{Tty.yellow.underline}Warning#{Tty.reset}: #{warning}"
end

# originally from Homebrew
def onoe(error)
  $stderr.puts "#{Tty.red.underline}Error#{Tty.reset}: #{error}"
end

def odebug(title, *sput)
  if Hbc.respond_to?(:debug) && Hbc.debug
    width = Tty.width * 4 - 6
    if $stdout.tty? && title.to_s.length > width
      title = title.to_s[0, width - 3] + "..."
    end
    puts "#{Tty.magenta.bold}==>#{Tty.reset.bold} #{title}#{Tty.reset}"
    puts sput unless sput.empty?
  end
end

def puts_columns(items, star_items = [])
  return if items.empty?
  puts Hbc::Utils.stringify_columns(items, star_items)
end

module Hbc::Utils
  def self.which(cmd, path = ENV["PATH"])
    unless File.basename(cmd) == cmd.to_s
      # cmd contains a directory element
      cmd_pn = Pathname(cmd)
      return nil unless cmd_pn.absolute?
      return resolve_executable(cmd_pn)
    end
    path.split(File::PATH_SEPARATOR).each do |elt|
      fq_cmd = Pathname(elt).expand_path.join(cmd)
      resolved = resolve_executable fq_cmd
      return resolved if resolved
    end
    nil
  end

  def self.resolve_executable(cmd)
    cmd_pn = Pathname(cmd)
    return nil unless cmd_pn.exist?
    return nil unless cmd_pn.executable?
    begin
      cmd_pn = Pathname(cmd_pn.realpath)
    rescue RuntimeError
      return nil
    end
    return nil unless cmd_pn.file?
    cmd_pn
  end

  # originally from Homebrew
  def self.which_editor
    editor = ENV.values_at("HOMEBREW_EDITOR", "VISUAL", "EDITOR").compact.first
    return editor unless editor.nil?

    # Find Textmate
    editor = "mate" if which "mate"
    # Find BBEdit / TextWrangler
    editor ||= "edit" if which "edit"
    # Find vim
    editor ||= "vim" if which "vim"
    # Default to standard vim
    editor ||= "/usr/bin/vim"

    opoo <<-EOS.undent
      Using #{editor} because no editor was set in the environment.
      This may change in the future, so we recommend setting EDITOR, VISUAL,
      or HOMEBREW_EDITOR to your preferred text editor.
    EOS

    editor
  end

  # originally from Homebrew
  def self.exec_editor(*args)
    safe_exec(which_editor, *args)
  end

  # originally from Homebrew puts_columns
  def self.stringify_columns(items, star_items = [])
    return if items.empty?

    if star_items && star_items.any?
      items = items.map { |item| star_items.include?(item) ? "#{item}*" : item }
    end

    return items.join("\n").concat("\n") unless $stdout.tty?

    # determine the best width to display for different console sizes
    console_width = `/bin/stty size 2>/dev/null`.chomp.split(" ").last.to_i
    console_width = 80 if console_width <= 0
    longest = items.sort_by(&:length).last
    optimal_col_width = (console_width.to_f / (longest.length + 2).to_f).floor
    cols = optimal_col_width > 1 ? optimal_col_width : 1
    Open3.popen2("/usr/bin/pr", "-#{cols}", "-t", "-w#{console_width}") do |stdin, stdout|
      stdin.puts(items)
      stdin.close
      stdout.read
    end
  end

  # originally from Homebrew
  # children.empty? is slow to enumerate the whole directory just
  # to see if it is empty
  def self.rmdir_if_possible(dir)
    dirpath = Pathname(dir)
    begin
      dirpath.rmdir
      true
    rescue Errno::ENOTEMPTY
      if (ds_store = dirpath.join(".DS_Store")).exist? && dirpath.children.length == 1
        ds_store.unlink
        retry
      else
        false
      end
    rescue Errno::EACCES, Errno::ENOENT
      false
    end
  end

  def self.gain_permissions_remove(path, options = {})
    if path.respond_to?(:rmtree) && path.exist?
      gain_permissions(path, ["-R"], options, &:rmtree)
    elsif File.symlink?(path)
      gain_permissions(path, ["-h"], options, &FileUtils.method(:rm_f))
    end
  end

  def self.gain_permissions(path, command_args, options = {})
    command = options.fetch(:command, Hbc::SystemCommand)
    tried_permissions = false
    tried_ownership = false
    begin
      yield path
    rescue StandardError
      # in case of permissions problems
      unless tried_permissions
        # TODO: Better handling for the case where path is a symlink.
        #       The -h and -R flags cannot be combined, and behavior is
        #       dependent on whether the file argument has a trailing
        #       slash.  This should do the right thing, but is fragile.
        command.run("/usr/bin/chflags",
                    must_succeed: false,
                    args:         command_args + ["--", "000", path])
        command.run("/bin/chmod",
                    must_succeed: false,
                    args:         command_args + ["--", "u+rwx", path])
        command.run("/bin/chmod",
                    must_succeed: false,
                    args:         command_args + ["-N", path])
        tried_permissions = true
        retry # rmtree
      end
      unless tried_ownership
        # in case of ownership problems
        # TODO: Further examine files to see if ownership is the problem
        #       before using sudo+chown
        ohai "Using sudo to gain ownership of path '#{path}'"
        command.run("/usr/sbin/chown",
                    args: command_args + ["--", current_user, path],
                    sudo: true)
        tried_ownership = true
        # retry chflags/chmod after chown
        tried_permissions = false
        retry # rmtree
      end
    end
  end

  def self.current_user
    Etc.getpwuid(Process.euid).name
  end

  # originally from Homebrew abv
  def self.cabv(dir)
    output = ""
    count = Hbc::SystemCommand.run!("/usr/bin/find",
                                    args:         [dir, *%w[-type f -not -name .DS_Store -print0]],
                                    print_stderr: false).stdout.count("\000")

    size = Hbc::SystemCommand.run!("/usr/bin/du",
                                   args:         ["-hs", "--", dir],
                                   print_stderr: false).stdout.split("\t").first.strip

    output << "#{count} files, " if count > 1
    output << size
  end

  # paths that "look" descendant (textually) will still
  # return false unless both the given paths exist
  def self.file_is_descendant(file, dir)
    file = Pathname.new(file)
    dir  = Pathname.new(dir)
    return false unless file.exist? && dir.exist?
    unless dir.directory?
      onoe "Argument must be a directory: '#{dir}'"
      return false
    end
    unless file.absolute? && dir.absolute?
      onoe "Both arguments must be absolute: '#{file}', '#{dir}'"
      return false
    end
    while file.parent != file
      return true if File.identical?(file, dir)
      file = file.parent
    end
    false
  end

  def self.path_occupied?(path)
    File.exist?(path) || File.symlink?(path)
  end

  def self.error_message_with_suggestions
    <<-EOS.undent
    #{Tty.reset.bold}
      Most likely, this means you have an outdated version of homebrew-cask. Please run:

          #{Tty.green.normal}#{UPDATE_CMD}

      #{Tty.reset.bold}If this doesn’t fix the problem, please report this bug:

          #{Tty.underline}#{ISSUES_URL}#{Tty.reset}

    EOS
  end

  def self.method_missing_message(method, token, section = nil)
    poo = []
    poo << "Unexpected method '#{method}' called"
    poo << "during #{section}" if section
    poo << "on Cask #{token}."

    opoo(poo.join(" ") + "\n" + error_message_with_suggestions)
  end

  # originally from Homebrew
  def self.ignore_interrupts(opt = nil)
    std_trap = trap("INT") do
      puts "One sec, just cleaning up" unless opt == :quietly
    end
    yield
  ensure
    trap("INT", std_trap)
  end

  def self.nowstamp_metadata_path(container_path)
    @timenow ||= Time.now.gmtime
    if container_path.respond_to?(:join)
      precision = 3
      timestamp = @timenow.strftime("%Y%m%d%H%M%S")
      fraction = format("%.#{precision}f", @timenow.to_f - @timenow.to_i)[1..-1]
      timestamp.concat(fraction)
      container_path.join(timestamp)
    end
  end

  def self.size_in_bytes(files)
    Array(files).reduce(0) { |a, e| a + (File.size?(e) || 0) }
  end

  # originally from Homebrew
  def self.disk_usage_readable(size_in_bytes)
    if size_in_bytes >= 1_073_741_824
      size = size_in_bytes.to_f / 1_073_741_824
      unit = "G"
    elsif size_in_bytes >= 1_048_576
      size = size_in_bytes.to_f / 1_048_576
      unit = "M"
    elsif size_in_bytes >= 1_024
      size = size_in_bytes.to_f / 1_024
      unit = "K"
    else
      size = size_in_bytes
      unit = "B"
    end

    # avoid trailing zero after decimal point
    if (size * 10).to_i % 10 == 0
      "#{size.to_i}#{unit}"
    else
      "#{format('%.1f', size)}#{unit}"
    end
  end

  # originally from Homebrew
  def self.number_readable(number)
    numstr = number.to_i.to_s
    (numstr.size - 3).step(1, -3) { |i| numstr.insert(i, ",") }
    numstr
  end

  # originally from Homebrew
  def self.install_gem_setup_path!(gem_name, version = nil, executable = gem_name)
    require "rubygems"
    ENV["PATH"] = "#{Gem.user_dir}/bin:#{ENV['PATH']}"

    if Gem::Specification.find_all_by_name(gem_name, version).empty?
      ohai "Installing or updating '#{gem_name}' gem"
      install_args = %W[--no-ri --no-rdoc --user-install #{gem_name}]
      install_args << "--version" << version if version

      # Do `gem install [...]` without having to spawn a separate process or
      # having to find the right `gem` binary for the running Ruby interpreter.
      require "rubygems/commands/install_command"
      install_cmd = Gem::Commands::InstallCommand.new
      install_cmd.handle_options(install_args)
      exit_code = 1 # Should not matter as `install_cmd.execute` always throws.
      begin
        install_cmd.execute
      rescue Gem::SystemExitException => e
        exit_code = e.exit_code
      end
      raise Hbc::CaskError, "Failed to install/update the '#{gem_name}' gem." if exit_code != 0
    end

    unless which executable
      raise Hbc::CaskError, <<-EOS.undent
        The '#{gem_name}' gem is installed but couldn't find '#{executable}' in the PATH:
        #{ENV['PATH']}
      EOS
    end
  end
end
