cask "webcatalog" do
  version "23.1.0"
  sha256 "7fa841ec74f45a3a443a92d34df0d5f4f6a2be8a7bb97267abb4cea599893ce6"

  # github.com/quanglam2807/webcatalog/ was verified as official when first introduced to the cask
  url "https://github.com/quanglam2807/webcatalog/releases/download/v#{version}/WebCatalog-#{version}-mac.zip"
  appcast "https://github.com/quanglam2807/webcatalog/releases.atom"
  name "WebCatalog"
  homepage "https://getwebcatalog.com/"

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
