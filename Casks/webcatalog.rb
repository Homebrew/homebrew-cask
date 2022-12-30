cask "webcatalog" do
  version "44.3.0"
  sha256 "2ce63484674cf2fdc342c2dbbdb925a77d4f3e7794018c173d97416b743a76a5"

  url "https://cdn-2.webcatalog.io/webcatalog/WebCatalog-#{version}-universal.dmg"
  name "WebCatalog"
  desc "Tool to run web apps like desktop apps"
  homepage "https://webcatalog.io/"

  livecheck do
    url "https://cdn-2.webcatalog.io/webcatalog/latest-mac.yml"
    strategy :electron_builder
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
