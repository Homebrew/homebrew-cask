require 'pathname'
require 'vendor/homebrew-fork/exceptions'

def homebrew_fork_system cmd, *args
  puts "#{cmd} #{args*' '}" if Hbc.verbose
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
  homebrew_fork_system(cmd, *args) or raise Hbc::ErrorDuringExecution.new(cmd, args)
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
  flags = flags.delete("#") if Hbc.verbose

  args = [flags, HOMEBREW_USER_AGENT, *args]
  # See https://github.com/Homebrew/homebrew/issues/6103
  args << "--insecure" if MacOS.release < "10.6"
  args << "--verbose" if ENV['HOMEBREW_CURL_VERBOSE']
  args << "--silent" unless $stdout.tty?

  safe_system curl, *args
end

def which_editor
  editor = ENV.values_at('HOMEBREW_EDITOR', 'VISUAL', 'EDITOR').compact.first
  # If an editor wasn't set, try to pick a sane default
  return editor unless editor.nil?

  # Find Textmate
  return 'mate' if Hbc::Utils.which "mate"
  # Find BBEdit / TextWrangler
  return 'edit' if Hbc::Utils.which "edit"
  # Find vim
  return 'vim' if Hbc::Utils.which "vim"
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
