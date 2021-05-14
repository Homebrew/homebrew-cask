cask "whatsapp" do
  version "2.2117.5"
  sha256 "2a86a50ec3322ab517d36a4a5ae3f050a08e2037f335cbb8c8c731478763fbdf"

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
