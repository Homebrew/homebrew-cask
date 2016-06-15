require 'tmpdir'

class Hbc::Container::Xar < Hbc::Container::Base
  def self.me?(criteria)
    criteria.magic_number(0, 4, 'xar!')
  end

  def extract
    Dir.mktmpdir do |unpack_dir|
      @command.run!('/usr/bin/xar', :args => ['-xf', @path, '-C', unpack_dir])
      @command.run!('/usr/bin/ditto', :args => ['--', unpack_dir, @cask.staged_path])
    end
  end
end
