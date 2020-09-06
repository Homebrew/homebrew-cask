cask "webcatalog" do
  version "24.3.1"
  sha256 "d7a164fa654b60f190cdb623a5efe1f9859df68372f37a99356c2ce5886a58ef"

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
