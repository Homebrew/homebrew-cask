require 'tmpdir'

class Cask::Container::Zip < Cask::Container::Base
  def self.me?(criteria)
    criteria.file.include? 'compressed-encoding=application/zip;'
  end

  def extract
    Dir.mktmpdir do |staging_dir|
      @command.run!('/usr/bin/unzip', :args => ['-qq', '-d', Pathname.new(staging_dir).realpath, Pathname.new(@path).realpath, '-x', '__MACOSX/*'])
      @command.run!('/usr/bin/ditto', :args => ['--', staging_dir, @cask.destination_path])
    end
  end
end
