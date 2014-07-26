require 'open3'

class Cask::SystemCommand
  def self.run(executable, options={})
    command = _process_options(executable, options)
    odebug "Executing: #{command.utf8_inspect}"
    output = ''
    exit_status = nil

    ext_stdin, ext_stdout, ext_stderr, wait_thr = Open3.popen3(*command)
    if options[:input]
      options[:input].each { |line| ext_stdin.puts line }
    end
    ext_stdin.close_write
    while line = ext_stdout.gets
      output << line
      ohai line.chomp if options[:print]
    end
    while line = ext_stderr.gets
      next if options[:stderr] == :silence
      output << line
      ohai line.chomp if options[:print]
    end
    ext_stdout.close_read
    ext_stderr.close_read

    # Ruby 1.8 sets $?. Ruby 1.9+ has wait_thr, and does not set $?.
    exit_status = wait_thr.nil? ? $? : wait_thr.value

    _assert_success(exit_status, command, output) if options[:must_succeed]
    if options[:plist]
      _parse_plist(command, output)
    else
      output
    end
  end

  def self.run!(command, options={})
    run(command, options.merge(:must_succeed => true))
  end

  def self._process_options(executable, options)
    options.assert_valid_keys :input, :print, :stderr, :args, :must_succeed, :sudo, :plist
    if options[:stderr] and options[:stderr] != :silence
      raise CaskError.new "Unknown value #{options[:stderr]} for key :stderr"
    end
    command = [executable]
    if options[:sudo]
      command.unshift('/usr/bin/sudo', '-E', '--')
    end
    if options.key?(:args) and
        ! options[:args].empty?
      command.concat options[:args]
    end
    command
  end

  def self._assert_success(status, command, output)
    unless status and status.success?
      raise CaskCommandFailedError.new(command.utf8_inspect, output, status)
    end
  end

  def self._warn_plist_garbage(command, garbage)
    return true unless garbage =~ %r{\S}
    external = File.basename(command.first)
    lines = garbage.strip.split("\n")
    opoo "Non-XML output from #{external}:"
    STDERR.puts lines.map {|l| "    #{l}"}
  end

  def self._parse_plist(command, output)
    begin
      raise CaskError.new("Empty plist input") unless output =~ %r{\S}
      output.sub!(%r{\A(.*?)(<\?\s*xml)}m, '\2')
      _warn_plist_garbage(command, $1) if Cask.debug
      output.sub!(%r{(<\s*/\s*plist\s*>)(.*?)\Z}m, '\1')
      _warn_plist_garbage(command, $2)
      xml = Plist::parse_xml(output)
      unless xml.respond_to?(:keys) and xml.keys.size > 0
        raise CaskError.new(<<-ERRMSG)
Empty result parsing plist output from command.
  command was:
  #{command.utf8_inspect}
  output we attempted to parse:
  #{output}
        ERRMSG
      end
      xml
    rescue Plist::ParseError => e
      raise CaskError.new(<<-ERRMSG)
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
