cask "usb-overdrive" do
  version "4.0.1"
  sha256 "fbd41aa72c814a57646058378c5022fcbf529f9d371e597a1be2a63dbd451856"

  url "https://www.usboverdrive.com/download/USB-Overdrive-#{version.no_dots}.dmg"
  name "USB Overdrive"
  desc "USB and Bluetooth device driver"
  homepage "https://www.usboverdrive.com/"

  pkg "Install USB Overdrive.pkg"

  uninstall pkgutil: "com.usboverdrive.installer",
            kext:    "/Library/Extensions/USBOverdrive.kext",
            delete:  [
              "/Library/PreferencePanes/USB Overdrive.prefPane",
              "/Applications/Utilities/Uninstall USB Overdrive.app",
            ]
end
