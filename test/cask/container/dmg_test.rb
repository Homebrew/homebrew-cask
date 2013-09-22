require 'test_helper'

describe Cask::Container::Dmg do
  describe "mount!" do
    it "does not store nil mounts for dmgs with extra data" do
      transmission = Cask.load('local-transmission')

      dmg = Cask::Container::Dmg.new(
        transmission,
        Pathname(transmission.url.path),
        Cask::SystemCommand
      )

      begin
        dmg.mount!
        dmg.mounts.wont_include nil
      ensure
        dmg.eject!
      end
    end
  end
end
