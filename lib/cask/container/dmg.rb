class Cask::Container::Dmg < Cask::Container::Base
  def self.me?(criteria)
    criteria.imageinfo != ''
  end

  attr_reader :mounts
  def initialize(*args)
    super(*args)
    @mounts = []
  end

  def extract
    mount!
    assert_mounts_found
    @mounts.each do |mount|
      @command.run('/usr/bin/ditto', :args => [mount, @cask.destination_path])
    end
  ensure
    eject!
  end

  def mount!
    plist = @command.run!('/usr/bin/hdiutil',
      :args => %w[mount -plist -nobrowse -readonly -noidme -mountrandom /tmp] + [@path],
      :input => %w[y],
      :plist => true
    )
    @mounts = mounts_from_plist(plist)
  end

  def mounts_from_plist(plist)
    plist.fetch('system-entities', []).map do |entity|
      entity['mount-point']
    end.compact
  end

  def assert_mounts_found
    if @mounts.empty?
      raise "no mounts found in #{@path}; perhaps its a bad dmg?"
    end
  end

  def eject!
    @mounts.each do |mount|
      @command.run!('/usr/bin/hdiutil', :args => ['eject', mount])
    end
  end
end
