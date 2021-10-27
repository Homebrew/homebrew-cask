cask "webcatalog" do
  version "38.0.3"
  sha256 "39a7d44d7e95044e6081d4421500dd8bf1c752777aa38d31584cba6f32f09cf2"

  url "https://github.com/webcatalog/webcatalog-app/releases/download/v#{version}/WebCatalog-#{version}-universal.dmg",
      verified: "github.com/webcatalog/webcatalog-app/"
  name "WebCatalog"
  desc "Tool to run web apps like desktop apps"
  homepage "https://webcatalog.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
