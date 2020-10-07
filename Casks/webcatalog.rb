cask "webcatalog" do
  version "25.3.0"
  sha256 "83dcfb23679db055161f0946b09b38a37f5f49bd29cd5a93c3ff119b5a3a1536"

  # github.com/atomery/webcatalog/ was verified as official when first introduced to the cask
  url "https://github.com/atomery/webcatalog/releases/download/v#{version}/WebCatalog-#{version}-mac.zip"
  appcast "https://github.com/atomery/webcatalog/releases.atom"
  name "WebCatalog"
  desc "Tool to run web apps like desktop apps"
  homepage "https://atomery.com/webcatalog/"

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
