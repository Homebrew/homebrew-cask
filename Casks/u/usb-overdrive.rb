cask "usb-overdrive" do
  version "5.4"
  sha256 "f98da45246aa8c407f523feb45efd285ad604dcd326b70633ac174f0a1096d84"

  url "https://www.usboverdrive.com/download/USB-Overdrive-#{version.no_dots}.dmg"
  name "USB Overdrive"
  desc "USB and Bluetooth device driver"
  homepage "https://www.usboverdrive.com/"

  livecheck do
    url "https://www.usboverdrive.com/downloads/"
    regex(/>USB\s+Overdrive\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :monterey

  app "USB Overdrive.app"

  uninstall quit: "com.usboverdrive.helper"

  zap trash: [
    "~/Library/Preferences/com.usboverdrive.app.plist",
    "~/Library/Preferences/com.usboverdrive.settings.plist",
  ]
end
