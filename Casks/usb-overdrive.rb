cask "usb-overdrive" do
  version "5.1"
  sha256 "648172412e702eb542f701707edc7e970b04d5b59f66ed88f71171ceaef34515"

  url "https://www.usboverdrive.com/download/USB-Overdrive-#{version.no_dots}.dmg"
  name "USB Overdrive"
  desc "USB and Bluetooth device driver"
  homepage "https://www.usboverdrive.com/"

  livecheck do
    url "https://www.usboverdrive.com/index.php/download/"
    regex(/>USB\s+Overdrive\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :big_sur"

  app "USB Overdrive.app"

  zap trash: [
    "~/Library/Preferences/com.usboverdrive.app.plist",
    "~/Library/Preferences/com.usboverdrive.settings.plist",
  ]
end
