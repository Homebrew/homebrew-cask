require 'open3'

class Cask::SystemCommand
  def self.run(executable, options={})
    command = _process_options(executable, options)
    odebug "Executing: #{command.inspect}"
    output = ''
    Open3.popen3(*command) do |stdin, stdout, stderr|
      if options[:input]
        options[:input].each { |line| stdin.puts line }
      end
      stdin.close_write
      while line = stdout.gets
        output << line
        ohai line.chomp if options[:print]
      end
      while line = stderr.gets
        next if options[:stderr] == :silence
        output << line
        ohai line.chomp if options[:print]
      end
    end
    _assert_success($?, command, output) if options[:must_succeed]
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
    unless status.success?
      raise CaskCommandFailedError.new(command.inspect, output)
    end
  end

  def self._parse_plist(command, output)
    begin
      Plist::parse_xml(output)
    rescue Plist::ParseError
      raise CaskError.new(<<-ERRMSG)
Error parsing plist output from command.
  command was:
  #{command.inspect}
  output we attempted to parse:
  #{output}
        ERRMSG
    end
  end
end
