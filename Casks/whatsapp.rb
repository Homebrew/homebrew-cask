cask "whatsapp" do
  version "2.2043.21"
  sha256 "4d1dfea77891f80b8a35c14753455edb406f5ca13ceb181d437d129c5a44c334"

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
