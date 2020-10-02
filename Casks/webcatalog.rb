cask "webcatalog" do
  version "25.1.0"
  sha256 "df8d3c87da0b949cac37eeee1d5625735405a016a908f42f3187d728de37a7c7"

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
