cask "whatsapp" do
  version "2.2049.8"
  sha256 "1cd0b61faeea6415deb4af113f96c7ae188aa286985ea2008b409ab4e6499c54"

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
