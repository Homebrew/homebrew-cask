cask "virtualhere" do
  version "5.2.7"
  sha256 :no_check

  url "https://www.virtualhere.com/sites/default/files/usbclient/VirtualHere.dmg"
  name "VirtualHere"
  desc "Use USB devices remotely over a network"
  homepage "https://www.virtualhere.com/usb_client_software"

  livecheck do
    url :homepage
    regex(/Version\s*(\d+(?:\.\d+)+)/i)
  end

  app "VirtualHere.app"

  zap trash: "~/Library/Preferences/com.virtualhere.vhui.plist"
end
