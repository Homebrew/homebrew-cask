cask "whatsapp" do
  version "2.2100.5"
  sha256 "95dbe4f399d595e5293596f5b652ba5944d9dfbd5e8b6c52f51497cbf4011425"

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  name "WhatsApp"
  desc "Desktop client for WhatsApp"
  homepage "https://www.whatsapp.com/"

  livecheck do
    url "https://web.whatsapp.com/desktop/mac/releases"
    strategy :page_match
    regex(/release-(\d+(?:\.\d+)*)\.zip/i)
  end

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
