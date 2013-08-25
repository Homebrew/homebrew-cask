class Cask::SystemCommand
  def self.run(command, options={})
    command = _process_options(command, options)
    output = ''
    IO.popen("#{command} 2>&1", 'r+') do |pipe|
      if options[:input]
        options[:input].each { |line| pipe.puts line }
      end
      pipe.close_write
      while line = pipe.gets
        output << line
        ohai line.chomp if options.fetch(:print, true)
      end
    end
    output
  end

  def self._process_options(command, options)
    if options[:sudo]
      command = "sudo -E #{_quote(command)}"
    end
    if options[:args]
      command = "#{command} #{options[:args].map { |arg| _quote(arg) }.join(' ')}"
    end
    command
  end

  def self._quote(string)
    %Q('#{string}')
  end
end
