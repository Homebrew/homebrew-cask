cask "whatsapp-beta" do
  version "2.2145.2"
  sha256 "23931ffc5f25d326afaa7c4c228eb94cd102da797f6c7e231301c528c1cc07aa"

  url "https://web.whatsapp.com/desktop-beta/mac/files/WhatsApp-beta.dmg"
  name "WhatsApp Beta"
  desc "Desktop client for WhatsApp Beta"
  homepage "https://www.whatsapp.com/"

  livecheck do
    url "https://web.whatsapp.com/desktop-beta/mac/releases"
    strategy :page_match
    regex(/release-(\d+(?:\.\d+)+)\.zip/i)
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/whatsapp-beta"

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
