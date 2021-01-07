cask "webcatalog" do
  version "27.4.0"
  sha256 "c0204ae7eae0d7fb3e15a25ed190beeb2f9e24a6735e5cb3c588dd297aa1f13e"

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
