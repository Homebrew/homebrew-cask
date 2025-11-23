cask "whatsapp@legacy" do
  version "2.2437.54"
  sha256 "a85519c5cabe3846986fe0b40c6b8b1124fc962d9c0d514087617d6528b334ab"

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  name "WhatsApp Legacy"
  desc "Legacy desktop client for WhatsApp"
  homepage "https://www.whatsapp.com/"

  disable! date: "2025-02-22", because: :no_longer_available

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

  caveats do
    requires_rosetta
  end
end
