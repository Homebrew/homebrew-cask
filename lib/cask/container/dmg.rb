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
      @command.run('/usr/bin/ditto', :args => ['--', mount, @cask.destination_path])
    end
  ensure
    eject!
  end

  def mount!
    plist = @command.run('/usr/bin/hdiutil',
      # realpath is a failsafe against unusual filenames
      :args => %w[mount -plist -nobrowse -readonly -noidme -mountrandom /tmp] + [Pathname.new(@path).realpath],
      :input => %w[y],
      :plist => true
    )
    @mounts = mounts_from_plist(plist)
  end

  def mounts_from_plist(plist)
    return [] unless plist.respond_to?(:fetch)
    plist.fetch('system-entities', []).map do |entity|
      entity['mount-point']
    end.compact
  end

  def assert_mounts_found
    if @mounts.empty?
      raise CaskError.new "No mounts found in '#{@path}'; perhaps it is a bad DMG?"
    end
  end

  def eject!
    @mounts.each do |mount|
      # realpath is a failsafe against unusual filenames
      mountpath = Pathname.new(mount).realpath
      next unless mountpath.exist?
      @command.run('/usr/sbin/diskutil',
                     :args => ['eject', mountpath],
                     :stderr => :silence)
      next unless mountpath.exist?
      sleep 1
      @command.run('/usr/sbin/diskutil',
                     :args => ['eject', mountpath],
                     :stderr => :silence)
      next unless mountpath.exist?
      raise CaskError.new "Failed to eject #{mountpath}"
    end
  end
end
