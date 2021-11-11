cask "webcatalog" do
  version "40.0.0"
  sha256 "6fecca63a87ce4527adc3c7bd42da0cb4554c02abe74aab1b32c4df651933ebd"

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
