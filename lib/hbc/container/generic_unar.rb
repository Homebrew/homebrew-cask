require 'tmpdir'

class Hbc::Container::GenericUnar < Hbc::Container::Base
  def self.me?(criteria)
    ! criteria.lsar.nil? and
      criteria.lsar.include? 'passed, 0 failed'
  end

  def extract
    unar = Hbc.homebrew_prefix.join('bin/unar')
    if ! Pathname.new(unar).exist?
      raise Hbc::CaskError.new "Expected to find unar executable. Cask #{@cask} must add: depends_on :formula => 'unar'"
    end

    ditto_debug_args = []
    
    ditto_debug_args << '--debug' if Hbc.verbose

    Dir.mktmpdir do |unpack_dir|
      @command.run!(unar,
        :args => ditto_debug_args + ['--', unpack_dir, @cask.staged_path])
      @command.run!('/usr/bin/ditto',
        :args => ['-q', '-D', '-o', unpack_dir, '--', @path])
    end
  end
end
