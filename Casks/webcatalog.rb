cask "webcatalog" do
  version "39.0.1"
  sha256 "6a95bc1f1be47e0f3f15c42fa956b32fdbb586c06deb1d9893264589b8c5d5a6"

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
