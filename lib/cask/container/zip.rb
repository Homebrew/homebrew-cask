class Cask::Container::Zip < Cask::Container::Base
  def self.me?(criteria)
    criteria.file.include? 'compressed-encoding=application/zip;'
  end

  def extract
    @command.run!('/usr/bin/ditto', :args => ['-xk', '--', @path, @cask.destination_path])
  end
end
