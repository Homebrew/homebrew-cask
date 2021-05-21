cask "virtualhere" do
  version "5.2.0"
  sha256 :no_check

  url "https://www.virtualhere.com/sites/default/files/usbclient/VirtualHere.dmg"
  name "VirtualHere"
  desc "Use USB devices remotely over a network"
  homepage "https://www.virtualhere.com/usb_client_software"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/Version\s*(\d+(?:\.\d+)*)/i)
  end

  app "VirtualHere.app"
end
