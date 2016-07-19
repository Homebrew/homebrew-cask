require "test_helper"

describe Hbc::Container::Dmg do
  describe "mount!" do
    it "does not store nil mounts for dmgs with extra data" do
      transmission = Hbc.load("local-transmission")

      dmg = Hbc::Container::Dmg.new(
        transmission,
        Pathname(transmission.url.path),
        Hbc::SystemCommand
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
