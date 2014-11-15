require 'tmpdir'

class Cask::Container::Tar < Cask::Container::Base
  def self.me?(criteria)
    criteria.file.include? 'application/x-tar'
  end

  def extract
    Dir.mktmpdir do |unpack_dir|
      @command.run!('/usr/bin/tar', :args => ['xf', @path, '-C', unpack_dir])
      @command.run!('/usr/bin/ditto', :args => ['--', unpack_dir, @cask.staged_path])
    end
  end
end
