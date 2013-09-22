class Cask::Container::Criteria
  attr_reader :path

  def initialize(path, command)
    @path = path
    @command = command
  end

  def file
    @file ||= @command.run('file', :args => ['-Izb', path], :print => false)
  end

  def imageinfo
    @imageinfo ||= @command.run(
      'hdiutil',
      :args => ['imageinfo', path],
      :stderr => :silence
    )
  end
end
