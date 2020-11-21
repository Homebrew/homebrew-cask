cask "whatsapp" do
  version "2.2047.11"
  sha256 "ed07863519638a5d55cd8d03ef6e6c927292f2311db0b8162cc37200887b9dfc"

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
