cask "virtualhereserver" do
  version "4.4.2"
  sha256 :no_check

  if MacOS.version <= :mojave
    url "https://www.virtualhere.com/sites/default/files/usbserver/VirtualHereServer.dmg"

    app "VirtualHereServer.app"
  else
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
end
