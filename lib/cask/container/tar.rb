require 'tmpdir'

class Cask::Container::Tar < Cask::Container::Base
  def self.me?(criteria)
    criteria.file.include? 'application/x-tar'
  end

  def extract
    Dir.mktmpdir do |staging_dir|
      @command.run('tar', :args => [
        'xf', @path,
        '-C', staging_dir,
      ])
      @command.run('ditto', :args => [staging_dir, @cask.destination_path])
    end
  end
end

