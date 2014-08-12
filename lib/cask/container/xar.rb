require 'tmpdir'

class Cask::Container::Xar < Cask::Container::Base
  def self.me?(criteria)
    criteria.magic_number(4, 'xar!'.unpack('C*'))
  end

  def extract
    Dir.mktmpdir do |staging_dir|
      @command.run!('/usr/bin/xar', :args => ['-xf', @path, '-C', staging_dir])
      @command.run!('/usr/bin/ditto', :args => ['--', staging_dir, @cask.destination_path])
    end
  end
end
