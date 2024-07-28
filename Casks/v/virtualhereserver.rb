cask "virtualhereserver" do
  version "4.6.7"
  sha256 :no_check

  on_mojave :or_older do
    url "https://www.virtualhere.com/sites/default/files/usbserver/VirtualHereServer.dmg"

    app "VirtualHereServer.app"
  end
  on_catalina :or_newer do
    url "https://www.virtualhere.com/sites/default/files/usbserver/VirtualHereServerUniversal.dmg"

    app "VirtualHereServerUniversal.app"
  end

  name "VirtualHereServer"
  desc "Remotely access your connected USB devices over the network"
  homepage "https://www.virtualhere.com/osx_server_software"

  livecheck do
    url :homepage
    regex(/Version\s*(\d+(?:\.\d*)*)/i)
  end

  zap trash: "~/Library/Preferences/com.virtualhere.vhusbd.plist"
end
