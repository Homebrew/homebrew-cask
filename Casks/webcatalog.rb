cask "webcatalog" do
  version "26.2.0"
  sha256 "cb911d5a43965630bc72143dad7301e7ae92dc41d47cbd6add1bd9b7c0e9ade4"

  # github.com/webcatalog/webcatalog-app/ was verified as official when first introduced to the cask
  url "https://github.com/webcatalog/webcatalog-app/releases/download/v#{version}/WebCatalog-#{version}.dmg"
  appcast "https://github.com/webcatalog/webcatalog-app/releases.atom"
  name "WebCatalog"
  desc "Tool to run web apps like desktop apps"
  homepage "https://webcatalog.app/"

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
