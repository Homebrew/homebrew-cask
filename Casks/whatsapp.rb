cask "whatsapp" do
  version "2.2047.12"
  sha256 "07d45ba13d063a2004a96365325a1bed02c19a02c41fd4256c258ebeeaeda158"

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
