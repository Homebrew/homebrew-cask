require 'tmpdir'

class Cask::Container::Bzip2 < Cask::Container::Base
  def self.me?(criteria)
    criteria.file.include? 'compressed-encoding=application/x-bzip2;'
  end

  def extract
    Dir.mktmpdir do |unpack_dir|
      @command.run!('/usr/bin/ditto',   :args => ['--', @path, unpack_dir])
      @command.run!('/usr/bin/bunzip2', :args => ['-q', '--', Pathname(unpack_dir).join(@path.basename)])
      @command.run!('/usr/bin/ditto',   :args => ['--', unpack_dir, @cask.staged_path])
    end
  end
end
