cask "webcatalog" do
  version "28.5.0"
  sha256 "ad1c03323041d66b9df70717003709c650555f16eed6cdef879adbf99eb8d23f"

  url "https://github.com/webcatalog/webcatalog-app/releases/download/v#{version}/WebCatalog-#{version}.dmg",
      verified: "github.com/webcatalog/webcatalog-app/"
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
