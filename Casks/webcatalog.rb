cask "webcatalog" do
  version "26.1.3"
  sha256 "4e05e89af1000cebbeb5e982bf5d7596dbc0e1697b59b934c2a3bcd7781e10f9"

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
