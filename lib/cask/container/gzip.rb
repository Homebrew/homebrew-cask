
# for pure gzip only, not tar-gzip (.tgz or .tar.gz)

require 'tmpdir'

class Cask::Container::Gzip < Cask::Container::Base
  def self.me?(criteria)
    criteria.file.include? 'compressed-encoding=application/x-gzip;'
  end

  def extract
    Dir.mktmpdir do |staging_dir|
      @command.run!('/usr/bin/ditto',  :args => ['--', @path, staging_dir])
      @command.run!('/usr/bin/gunzip', :args => ['-q', '--', Pathname(staging_dir).join(@path.basename)])
      @command.run!('/usr/bin/ditto',  :args => ['--', staging_dir, @cask.destination_path])
    end
  end
end
