require 'tmpdir'

class Hbc::Container::Bzip2 < Hbc::Container::Base
  def self.me?(criteria)
    criteria.file.include? 'compressed-encoding=application/x-bzip2;'
  end

  def extract
    ditto_debug_args = []
    bzip_verbose_args = []
    if Hbc.verbose
      ditto_debug_args << '--debug'
      bzip_verbose_args << '-vv'
    end

    Dir.mktmpdir do |unpack_dir|
      @command.run!('/usr/bin/ditto',
        :args => ditto_debug_args + ['--', @path, unpack_dir])
      @command.run!('/usr/bin/bunzip2',
        :args => bzip_verbose_args + ['-q', '--', Pathname(unpack_dir).join(@path.basename)])
      @command.run!('/usr/bin/ditto',
        :args => ditto_debug_args + ['--', unpack_dir, @cask.staged_path])
    end
  end
end
