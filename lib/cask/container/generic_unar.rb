require 'tmpdir'

class Cask::Container::GenericUnar < Cask::Container::Base
  def self.me?(criteria)
    ! criteria.lsar.nil? and
      criteria.lsar.include? 'passed, 0 failed'
  end

  def extract
    unar = HOMEBREW_PREFIX.join('bin/unar')
    if ! Pathname.new(unar).exist?
      raise CaskError.new "Expected to find unar executable. Cask #{@cask} must add: depends_on :formula => 'unar'"
    end
    Dir.mktmpdir do |unpack_dir|
      @command.run!(unar, :args => ['-q', '-D', '-o', unpack_dir, '--', @path])
      @command.run!('/usr/bin/ditto', :args => ['--', unpack_dir, @cask.staged_path])
    end
  end
end
