cask "webcatalog" do
  version "24.2.0"
  sha256 "f32aaa8ebb50cd449216c2dc526f416595aeb1c8e9a98b4a49bf780eb898f541"

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
