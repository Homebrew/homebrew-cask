class Cask::Container::Criteria
  attr_reader :path

  def initialize(path, command)
    @path = path
    @command = command
  end

  def file
    @file ||= @command.run('/usr/bin/file', :args => ['-Izb', '--', path])
  end

  def imageinfo
    @imageinfo ||= @command.run(
      '/usr/bin/hdiutil',
      :args => ['imageinfo', path],
      :stderr => :silence,
      :print => false
    )
  end
end
