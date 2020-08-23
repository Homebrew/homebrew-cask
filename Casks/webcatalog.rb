cask "webcatalog" do
  version "24.1.0"
  sha256 "3d00b18988f497c4289d0a7aa7c33937cdb38a6f6ca3b031032e1126a9bd42a8"

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
