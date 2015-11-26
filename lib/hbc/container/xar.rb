require 'tmpdir'

class Hbc::Container::Xar < Hbc::Container::Base
  def self.me?(criteria)
    criteria.magic_number(4, 'xar!'.unpack('C*'))
  end

  def extract
    xar_verbose_args = []
    ditto_debug_args = []

    if Hbc.verbose
      xar_verbose_args << '-v'
      ditto_debug_args << '--debug'
    end

    Dir.mktmpdir do |unpack_dir|
      @command.run!('/usr/bin/xar',
        :args => xar_verbose_args + ['-xf', @path, '-C', unpack_dir])
      @command.run!('/usr/bin/ditto',
        :args => ditto_debug_args + ['--', unpack_dir, @cask.staged_path])
    end
  end
end
