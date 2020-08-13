cask "teradici-pcoip-client" do
  version "2020.07"
  sha256 "0a494414547c1bf66a843f21d0a14edad1d1abcf1994dd3159b304556239cd3c"

  url "https://downloads.teradici.com/mac/stable/pcoip-client_20.07.0.dmg"
  name "Teradici PCoIP Software Client for macOS"
  desc "Connections can be made to virtual machines via PCoIP agents and Remote Workstation Cards"
  homepage "https://docs.teradici.com/find/product/software-and-mobile-clients/"

  app "PCoIPClient.app"

  uninstall quit: [
    "com.teradici.swiftclient",
    "com.teradici.usb-mediator",
  ]

  zap trash: [
    "~/Library/Preferences/com.teradici.swiftclient.plist",
    "~/Library/Preferences/com.teradici.Teradici PCoIP Client.plist",
    "~/Library/Preferences/com.teradici.PCoIP Client Connection Info.plist",
  ]
end
