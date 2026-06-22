cask "virtualhere" do
  version "6.0.1"
  sha256 :no_check

  url "https://www.virtualhere.com/sites/default/files/usbclient/VirtualHereUniversal.dmg"
  name "VirtualHere"
  desc "Use USB devices remotely over a network"
  homepage "https://www.virtualhere.com/usb_client_software"

  livecheck do
    url :homepage
    regex(/Version\s*(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :big_sur

  app "VirtualHereUniversal.app"

  zap trash: "~/Library/Preferences/com.virtualhere.vhui.plist"
end
