class Cask::Container::Criteria
  attr_reader :path

  def initialize(path, command)
    @path = path
    @command = command
  end

  def file
    @file ||= @command.run('/usr/bin/file', :args => ['-Izb', '--', path]).stdout
  end

  def imageinfo
    @imageinfo ||= @command.run(
      '/usr/bin/hdiutil',
      # realpath is a failsafe against unusual filenames
      :args => ['imageinfo', Pathname.new(path).realpath],
      :print_stderr => false
    ).stdout
  end

  def cabextract
    if HOMEBREW_PREFIX.join('bin/cabextract').exist?
      @cabextract ||= @command.run(
        HOMEBREW_PREFIX.join('bin/cabextract'),
        :args => ['-t', '--', path],
        :print_stderr => false
      ).stdout
    end
  end

  def lsar
    if HOMEBREW_PREFIX.join('bin/lsar').exist?
      @lsar ||= @command.run(
        HOMEBREW_PREFIX.join('bin/lsar'),
        :args => ['-l', '-t', '--', path],
        :print_stderr => false
      ).stdout
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
