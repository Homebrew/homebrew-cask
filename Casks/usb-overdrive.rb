cask "usb-overdrive" do
  version "5.1"
  sha256 "648172412e702eb542f701707edc7e970b04d5b59f66ed88f71171ceaef34515"

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
