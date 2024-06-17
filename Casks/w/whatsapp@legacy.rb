cask "whatsapp@legacy" do
  version "2.2422.51"
  sha256 "988e5021884a37b0bd776043dba2e8b3e73d5cd8b6a0b57e1b54996631dfa050"

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
