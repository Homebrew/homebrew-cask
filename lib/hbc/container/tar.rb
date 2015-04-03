require 'tmpdir'

class Hbc::Container::Tar < Hbc::Container::Base
  def self.me?(criteria)
    criteria.file.include? 'application/x-tar'
  end

  def extract
    tar_verbose_args = []
    ditto_debug_args = []

    if Hbc.verbose
      tar_verbose_args << '-vv'
      ditto_debug_args << '--debug'
    end

    Dir.mktmpdir do |unpack_dir|
      @command.run!('/usr/bin/tar',
        :args => tar_verbose_args + ['xf', @path, '-C', unpack_dir])
      @command.run!('/usr/bin/ditto',
        :args => ditto_debug_args + ['--', unpack_dir, @cask.staged_path])
    end
  end
end
