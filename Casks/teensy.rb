cask "teensy" do
  version "1.56"
  sha256 :no_check

  url "https://www.pjrc.com/teensy/teensy.dmg"
  name "Teensy"
  desc "Firmware flashing utility"
  homepage "https://pjrc.com/teensy/loader_mac.html"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "teensy.app"
end
