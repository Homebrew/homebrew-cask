cask "whatsapp@legacy" do
  version "2.2416.2"
  sha256 "4697863bd8c8a26d1a7a944e873af40d8b288a9780d04667d894391e27b6a4a4"

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  name "WhatsApp Legacy"
  desc "Legacy desktop client for WhatsApp"
  homepage "https://www.whatsapp.com/"

  livecheck do
    url "https://web.whatsapp.com/desktop/mac/releases"
    strategy :json do |json|
      json["name"]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "whatsapp",
    "whatsapp@beta",
  ]

  app "WhatsApp.app"

  zap trash: [
    "~/Library/Application Support/WhatsApp",
    "~/Library/Application Support/WhatsApp.ShipIt",
    "~/Library/Caches/WhatsApp",
    "~/Library/Caches/WhatsApp.ShipIt",
    "~/Library/Preferences/ByHost/WhatsApp.ShipIt.*.plist",
    "~/Library/Preferences/WhatsApp-Helper.plist",
    "~/Library/Preferences/WhatsApp.plist",
    "~/Library/Saved Application State/WhatsApp.savedState",
  ]
end
