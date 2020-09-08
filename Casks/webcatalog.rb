cask "webcatalog" do
  version "24.3.2"
  sha256 "4d54cd9d957674cbc720c8938f5906a828a98f1acc748b9df2b7506a48584148"

  # github.com/atomery/webcatalog/ was verified as official when first introduced to the cask
  url "https://github.com/atomery/webcatalog/releases/download/v#{version}/WebCatalog-#{version}-mac.zip"
  appcast "https://github.com/atomery/webcatalog/releases.atom"
  name "WebCatalog"
  homepage "https://atomery.com/webcatalog/"

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
