cask "whatsapp" do
  version "2.2315.6"
  sha256 "1f483a9e212c1c9b1bb1dda49024e2adaa0fe5305a3d0454e1c1c182d96cea7c"

  url "https://web.whatsapp.com/desktop/mac/files/release-#{version}.zip"
  name "WhatsApp"
  desc "Desktop client for WhatsApp"
  homepage "https://www.whatsapp.com/"

  livecheck do
    url "https://web.whatsapp.com/desktop/mac/releases"
    strategy :json do |json|
      json["name"]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "homebrew/cask-versions/whatsapp-alpha",
    "homebrew/cask-versions/whatsapp-beta",
  ]

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
