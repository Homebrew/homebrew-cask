class Cask::Container::Dmg < Cask::Container::Base
  def self.me?(criteria)
    criteria.imageinfo != ''
  end

  def initialize(*args)
    super(*args)
    @mounts = []
  end

  def extract
    mount!
    assert_mounts_found
    @mounts.each do |mount|
      @command.run('ditto', :args => [mount, @cask.destination_path])
    end
  ensure
    eject!
  end

  def mount!
    plist = @command.run('hdiutil', :args => [
      'mount',
      '-plist', '-nobrowse', '-readonly', '-noidme', '-mountrandom',
      '/tmp', @path
    ])
    Plist::parse_xml(plist).fetch('system-entities', []).each do |entity|
      @mounts << entity['mount-point']
    end
  end

  def assert_mounts_found
    if @mounts.empty?
      raise "no mounts found in #{@path}; perhaps its a bad dmg?"
    end
  end

  def eject!
    @mounts.each do |mount|
      @command.run('hdiutil', :args => ['eject', mount])
    end
  end
end
