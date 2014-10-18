
# for pure gzip only, not tar-gzip (.tgz or .tar.gz)

require 'tmpdir'

class Cask::Container::Gzip < Cask::Container::Base
  def self.me?(criteria)
    criteria.file.include? 'compressed-encoding=application/x-gzip;'
  end

  def extract
    Dir.mktmpdir do |unpack_dir|
      @command.run!('/usr/bin/ditto',  :args => ['--', @path, unpack_dir])
      @command.run!('/usr/bin/gunzip', :args => ['-q', '--', Pathname(unpack_dir).join(@path.basename)])
      @command.run!('/usr/bin/ditto',  :args => ['--', unpack_dir, @cask.staged_path])
    end
  end
end
