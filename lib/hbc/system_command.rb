require 'open3'
require 'shellwords'

class Hbc::SystemCommand
  def self.run(executable, options={})
    command = _process_options(executable, options)
    odebug "Executing: #{command.utf8_inspect}"
    processed_stdout = ''
    processed_stderr = ''

    command[0] = Shellwords.shellescape(command[0]) if command.size == 1

    raw_stdin, raw_stdout, raw_stderr, raw_wait_thr =
      Open3.popen3(*command.map { |arg| arg.respond_to?(:to_path) ? File.absolute_path(arg) : String(arg) })

    if options[:input]
      Array(options[:input]).each { |line| raw_stdin.puts line }
    end
    raw_stdin.close_write

    while line = raw_stdout.gets
      processed_stdout << line
      ohai line.chomp if options[:print_stdout]
    end

    while line = raw_stderr.gets
      processed_stderr << line
      ohai line.chomp if options[:print_stderr]
    end

    raw_stdout.close_read
    raw_stderr.close_read

    processed_status = raw_wait_thr.value

    _assert_success(processed_status, command, processed_stdout) if options[:must_succeed]

    Hbc::SystemCommand::Result.new(command, processed_stdout, processed_stderr, processed_status.exitstatus)
  end

  def self.run!(command, options={})
    run(command, options.merge(:must_succeed => true))
  end

  def self._process_options(executable, options)
    options.assert_valid_keys :input, :print_stdout, :print_stderr, :args, :must_succeed, :sudo, :bsexec
    sudo_prefix = %w{/usr/bin/sudo -E --}
    bsexec_prefix = [ '/bin/launchctl', 'bsexec',  options[:bsexec]  == :startup ? '/' : options[:bsexec] ]
    command = [executable]
    options[:print_stderr] = true   if !options.key?(:print_stderr)
    command.unshift(*bsexec_prefix) if  options[:bsexec]
    command.unshift(*sudo_prefix)   if  options[:sudo]
    command.concat(options[:args])  if  options.key?(:args) and !options[:args].empty?
    command
  end

  def self._assert_success(status, command, output)
    unless status and status.success?
      raise Hbc::CaskCommandFailedError.new(command.utf8_inspect, output, status)
    end
  end
end

class Hbc::SystemCommand::Result

  attr_accessor :command, :stdout, :stderr, :exit_status

  def initialize(command, stdout, stderr, exit_status)
    @command     = command
    @stdout      = stdout
    @stderr      = stderr
    @exit_status = exit_status
  end

  def plist
    @plist ||= self.class._parse_plist(@command, @stdout.dup)
  end

  def success?
    @exit_status == 0
  end

  def merged_output
    @merged_output ||= @stdout + @stderr
  end

  def to_s
    @stdout
  end

  def self._warn_plist_garbage(command, garbage)
    return true unless garbage =~ %r{\S}
    external = File.basename(command.first)
    lines = garbage.strip.split("\n")
    opoo "Non-XML stdout from #{external}:"
    $stderr.puts lines.map {|l| "    #{l}"}
  end

  def self._parse_plist(command, output)
    begin
      raise Hbc::CaskError.new("Empty plist input") unless output =~ %r{\S}
      output.sub!(%r{\A(.*?)(<\?\s*xml)}m, '\2')
      _warn_plist_garbage(command, $1) if Hbc.debug
      output.sub!(%r{(<\s*/\s*plist\s*>)(.*?)\Z}m, '\1')
      _warn_plist_garbage(command, $2)
      xml = Plist::parse_xml(output)
      unless xml.respond_to?(:keys) and xml.keys.size > 0
        raise Hbc::CaskError.new(<<-ERRMSG)
Empty result parsing plist output from command.
  command was:
  #{command.utf8_inspect}
  output we attempted to parse:
  #{output}
        ERRMSG
      end
      xml
    rescue Plist::ParseError => e
      raise Hbc::CaskError.new(<<-ERRMSG)
Error parsing plist output from command.
  command was:
  #{command.utf8_inspect}
  error was:
  #{e}
  output we attempted to parse:
  #{output}
        ERRMSG
    end
  end
end
