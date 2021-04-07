cask "virtualhereserver" do
  version "4.2.8"
  sha256 :no_check

  if Hardware::CPU.intel?
    url "https://www.virtualhere.com/sites/default/files/usbserver/VirtualHereServer.dmg"
  else
    url "https://www.virtualhere.com/sites/default/files/usbserver/VirtualHereServerSilicon.dmg"
  end

  name "VirtualHereServer"
  homepage "https://www.virtualhere.com/osx_server_software"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/Version\s*(\d+(?:\.\d*)*)/i)
  end

  app "VirtualHereServer.app"
end
