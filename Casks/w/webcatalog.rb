cask "webcatalog" do
  version "71.2.0"
  sha256 "65b88509b9b234c7b7a2c640c127b90e10bac5f738a39e9647897acedaa80de7"

  url "https://cdn-2.webcatalog.io/webcatalog/WebCatalog-#{version}-universal.dmg"
  name "WebCatalog"
  desc "Tool to run web apps like desktop apps"
  homepage "https://webcatalog.io/"

  livecheck do
    url "https://cdn-2.webcatalog.io/webcatalog/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "WebCatalog.app"

  zap trash: [
    "~/Library/Application Support/WebCatalog",
    "~/Library/Caches/com.webcatalog.jordan",
    "~/Library/Caches/com.webcatalog.jordan.ShipIt",
    "~/Library/Preferences/com.webcatalog.jordan.plist",
    "~/Library/Saved Application State/com.webcatalog.jordan.savedState",
  ]
end
