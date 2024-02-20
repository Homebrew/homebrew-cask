cask "usb-overdrive" do
  version "5.3.1"
  sha256 "36d923046fca04503288449f48dd3bab299e782974900a2ddd0d2dbf81bf3e6c"

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
