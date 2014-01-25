class Cask::SystemCommand
  def self.run(executable, options={})
    command = _process_options(executable, options)
    output = ''
    IO.popen(command, 'r+') do |pipe|
      if options[:input]
        options[:input].each { |line| pipe.puts line }
      end
      pipe.close_write
      while line = pipe.gets
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

  def self.run!(command, options)
    run(command, options.merge(:must_succeed => true))
  end

  # from Shellwords.shellescape
  def self._shellescape(str)
    return "''" if str.empty?

    str = str.dup

    str.gsub!(/([^A-Za-z0-9_\-.,:\/@\n])/n, "\\\\\\1")
    str.gsub!(/\n/, "'\n'")

    return str
  end

  # returns shell-escaped command
  # arguments wrapped in single or double quotes are not escaped
  def self._process_options(executable, options)
    command_array = Array(executable)
    if options[:sudo]
      command_array.unshift('/usr/bin/sudo', '-E')
    end
    if options[:args]
      command_array.push(*options[:args])
      command = command_array.map { |arg|
        # don't escape arguments wrapped in single or double quotes
        if /^\s*('|").*(\1)\s*$/ !~ arg
          _shellescape("#{arg}")
        else
          "#{arg}"
        end
      }.join(' ')
    end
    case options[:stderr]
    when :silence then
      command = "#{command} 2>/dev/null"
    when :merge, nil then
      command = "#{command} 2>&1"
    end
    command
  end

  def self._assert_success(status, command, output)
    unless status.success?
      raise CaskCommandFailedError.new(command, output)
    end
  end

  def self._parse_plist(command, output)
    begin
      Plist::parse_xml(output)
    rescue Plist::ParseError
      raise CaskError.new(<<-ERRMSG)
Error parsing plist output from command.
  command was:
  #{command}
  output we attempted to parse:
  #{output}
        ERRMSG
    end
  end
end
