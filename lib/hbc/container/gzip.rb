
# for pure gzip only, not tar-gzip (.tgz or .tar.gz)

require 'tmpdir'

class Hbc::Container::Gzip < Hbc::Container::Base
  def self.me?(criteria)
    criteria.file.include? 'compressed-encoding=application/x-gzip;'
  end

  def extract
    ditto_debug_args = []
    gzip_verbose_args = []

    ditto_debug_args << '--debug' if Hbc.verbose
    gzip_verbose_args << '-q' if not Hbc.verbose

    Dir.mktmpdir do |unpack_dir|
      @command.run!('/usr/bin/ditto',
        :args => ditto_debug_args + ['--', @path, unpack_dir])
      @command.run!('/usr/bin/gunzip',
        :args => gzip_verbose_args + ['--', Pathname(unpack_dir).join(@path.basename)])
      @command.run!('/usr/bin/ditto',
        :args => ditto_debug_args + ['--', unpack_dir, @cask.staged_path])
    end
  end
end
