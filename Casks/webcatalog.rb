cask "webcatalog" do
  version "23.1.1"
  sha256 "3eadda32163f8e4627b8abd6c3c1c555584dcedf36303663aa55cf85f627ca76"

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
