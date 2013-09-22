class Cask::Container::Zip < Cask::Container::Base
  def self.me?(criteria)
    criteria.file.include? 'compressed-encoding=application/zip;'
  end

  def extract
    Dir.mktmpdir do |staging_dir|
      @command.run('unzip', :args => [
        '-qq',
        '-d', staging_dir,
        @path,
        '-x', '__MACOSX/*'
      ])
      @command.run('ditto', :args => [staging_dir, @cask.destination_path])
    end
  end
end
