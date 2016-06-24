require 'zlib'

class Hbc::Container::Criteria
  attr_reader :path

  def initialize(path, command)
    @path = path
    @command = command
  end

  def file
    @file ||= @command.run('/usr/bin/file', :args => ['-Izb', '--', path]).stdout
  end

  def tar?
    Proc.new do |tar|
      tar.read(257)
      bytes = tar.read(6)
      bytes ? bytes.unpack('C*') == "ustar\0".unpack('C*') : false
    end
  end

  def tar_bz2?
    return @tar_bz2 unless @tar_bz2.nil?
    return (@tar_bz2 = false) if @tar_gz == true
    @tar_bz2 = file.include?('application/x-bzip2;') &&
      IO.popen(['/usr/bin/bunzip2', '-c', @path.to_s, err: [:child, :out]], &tar?)
  end

  def tar_gz?
    return @tar_gz unless @tar_gz.nil?
    return (@tar_gz = false) if @tar_bz2 == true
    @tar_gz = file.include?('application/x-gzip;') &&
      Zlib::GzipReader.open(@path, &tar?)
  end

  def tarball?
    return @tarball unless @tarball.nil?
    @tarball = tar_gz? || tar_bz2? || (
      result = @command.run('/usr/bin/tar', :args => ['-tf', path])
      result.success? && result.stdout.length > 0 && result.stderr.length == 0
    )
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
    if Hbc.homebrew_prefix.join('bin/cabextract').exist?
      @cabextract ||= @command.run(
        Hbc.homebrew_prefix.join('bin/cabextract'),
        :args => ['-t', '--', path],
        :print_stderr => false
      ).stdout
    end
  end

  def lsar
    if Hbc.homebrew_prefix.join('bin/lsar').exist?
      @lsar ||= @command.run(
        Hbc.homebrew_prefix.join('bin/lsar'),
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
