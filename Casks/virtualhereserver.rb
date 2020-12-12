cask "virtualhereserver" do
  version "4.2.0"
  sha256 :no_check

  url "https://www.virtualhere.com/sites/default/files/usbserver/VirtualHereServer.dmg"
  name "VirtualHereServer"
  homepage "https://www.virtualhere.com/osx_server_software"

  app "VirtualHereServer.app"
end
