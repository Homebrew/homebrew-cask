cask "webcatalog" do
  version "41.2.1"
  sha256 "1cd63f5417a1e5192af38f00d6dbe8476754619815d2221055bb195b7078360f"

  url "https://github.com/webcatalog/webcatalog-app/releases/download/v#{version}/WebCatalog-classic-#{version}-universal.dmg",
      verified: "github.com/webcatalog/webcatalog-app/"
  name "WebCatalog"
  desc "Tool to run web apps like desktop apps"
  homepage "https://webcatalog.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "WebCatalog Classic.app"

  zap trash: [
    "~/Library/Application Support/WebCatalog",
    "~/Library/Caches/com.webcatalog.jordan",
    "~/Library/Caches/com.webcatalog.jordan.ShipIt",
    "~/Library/Preferences/com.webcatalog.jordan.plist",
    "~/Library/Saved Application State/com.webcatalog.jordan.savedState",
  ]
end
