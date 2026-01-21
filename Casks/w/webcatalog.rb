cask "webcatalog" do
  version "73.1.1"
  sha256 "1b678d2cd9ecaadceaf525edab7e2743ded00ba3de249ce96b2ff1de1d6fce49"

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
