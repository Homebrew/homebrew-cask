cask "webcatalog" do
  version "56.0.2"
  sha256 "88548a75c20793d503d43fdac270411d3af58b2f6d03768bd32b62b5ce9a0cce"

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
