cask "whatsapp" do
  version "2.2043.15"
  sha256 "0e9b4cb1f231bb005b570cf74bbca3173d1ddcd4cf2ffd70e4bde4a94f7d3be6"

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  appcast "https://web.whatsapp.com/desktop/mac/releases?platform=darwin&arch=x64"
  name "WhatsApp"
  desc "Desktop client for WhatsApp"
  homepage "https://www.whatsapp.com/"

  auto_updates true

  app "WhatsApp.app"

  zap trash: [
    "~/Library/Application Support/WhatsApp",
    "~/Library/Application Support/WhatsApp.ShipIt",
    "~/Library/Caches/WhatsApp",
    "~/Library/Caches/WhatsApp.ShipIt",
    "~/Library/Preferences/ByHost/WhatsApp.ShipIt.*.plist",
    "~/Library/Preferences/WhatsApp.plist",
    "~/Library/Preferences/WhatsApp-Helper.plist",
    "~/Library/Saved Application State/WhatsApp.savedState",
  ]
end
