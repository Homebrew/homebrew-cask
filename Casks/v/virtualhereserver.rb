cask "virtualhereserver" do
  version "4.8.5"
  sha256 :no_check

  url "https://www.virtualhere.com/sites/default/files/usbserver/VirtualHereServerUniversal.dmg"
  name "VirtualHereServer"
  desc "Remotely access your connected USB devices over the network"
  homepage "https://www.virtualhere.com/osx_server_software"

  livecheck do
    url :homepage
    regex(/Version\s*(\d+(?:\.\d*)*)/i)
  end

  app "VirtualHereServerUniversal.app"

  zap trash: "~/Library/Preferences/com.virtualhere.vhusbd.plist"
end
