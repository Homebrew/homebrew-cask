cask "webcatalog" do
  version "23.0.1"
  sha256 "eae427204990f0a5f65f0964aa37dd598508b6180e5724017af725fd3a29650f"

  # github.com/quanglam2807/webcatalog/ was verified as official when first introduced to the cask
  url "https://github.com/quanglam2807/webcatalog/releases/download/v#{version}/WebCatalog-#{version}-mac.zip"
  appcast "https://github.com/quanglam2807/webcatalog/releases.atom"
  name "WebCatalog"
  homepage "https://getwebcatalog.com/"

  auto_updates true

  app "WebCatalog.app"

  zap trash: [
    "~/Library/Application Support/WebCatalog",
    "~/Library/Caches/com.webcatalog.jordan",
    "~/Library/Caches/com.webcatalog.jordan.ShipIt",
    "~/Library/Preferences/com.webcatalog.jordan.plist",
    "~/Library/Saved Application State/com.webcatalog.jordan.savedState",
  ]
end
