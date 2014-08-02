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
      # realpath is a failsafe against unusual filenames
      :args => ['imageinfo', Pathname.new(path).realpath],
      :stderr => :silence,
      :print => false
    )
  end

  def cabextract
    if HOMEBREW_PREFIX.join('bin/cabextract').exist?
      @cabextract ||= @command.run(
        HOMEBREW_PREFIX.join('bin/cabextract'),
        :args => ['-t', '--', path],
        :stderr => :silence,
        :print => false
      )
    end
  end

  def lsar
    if HOMEBREW_PREFIX.join('bin/lsar').exist?
      @lsar ||= @command.run(
        HOMEBREW_PREFIX.join('bin/lsar'),
        :args => ['-l', '-t', '--', path],
        :stderr => :silence,
        :print => false
      )
    end
  end

  def extension(test)
    path.extname.sub(%r{\A\.}, '').downcase == test.downcase
  end

  def magic_number(num, test)
    File.open(path, "rb") do |file|
      bytes = file.read(num).unpack('C*')
      bytes == test
    end
  end
end
