require 'tmpdir'

class Cask::Container::Bzip2 < Cask::Container::Base
  def self.me?(criteria)
    criteria.file.include? 'compressed-encoding=application/x-bzip2;'
  end

  def extract
    Dir.mktmpdir do |staging_dir|
      @command.run!('/usr/bin/ditto',   :args => ['--', @path, staging_dir])
      @command.run!('/usr/bin/bunzip2', :args => ['-q', '--', Pathname(staging_dir).join(@path.basename)])
      @command.run!('/usr/bin/ditto',   :args => ['--', staging_dir, @cask.destination_path])
    end
  end
end
