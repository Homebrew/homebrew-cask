cask "webcatalog" do
  version "25.7.0"
  sha256 "7ca7db4d90a2d53092eb79f0e84c90a8c58f7ef5bcd39fc3687b99441b962ff5"

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
