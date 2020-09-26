cask "webcatalog" do
  version "24.8.0"
  sha256 "9ca3e41ff303b04f4b9392c420560340fb6325295781742232e5adfaa8e3429e"

  # github.com/atomery/webcatalog/ was verified as official when first introduced to the cask
  url "https://github.com/atomery/webcatalog/releases/download/v#{version}/WebCatalog-#{version}-mac.zip"
  appcast "https://github.com/atomery/webcatalog/releases.atom"
  name "WebCatalog"
  desc "Tool to run web apps like desktop apps"
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
