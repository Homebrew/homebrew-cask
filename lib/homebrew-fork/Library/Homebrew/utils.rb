require 'pathname'
require 'exceptions'
require 'os/mac'
require 'utils/popen'

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

def ignore_interrupts(opt = nil)
  std_trap = trap("INT") do
    puts "One sec, just cleaning up" unless opt == :quietly
  end
  yield
ensure
  trap("INT", std_trap)
end
