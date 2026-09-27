cask "webcatalog" do
  version "80.2.1"
  sha256 "6f279e3b7c33260dd74b83468100de2083e2997a374e04a09e7fcbfd293f3e52"

  url "https://cdn-2.webcatalog.io/webcatalog/WebCatalog-#{version}-universal.dmg"
  name "WebCatalog"
  desc "Tool to run web apps like desktop apps"
  homepage "https://webcatalog.io/"

  livecheck do
    url "https://cdn-2.webcatalog.io/webcatalog/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "WebCatalog.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.webcatalog.jordan.sfl*",
    "~/Library/Application Support/WebCatalog",
    "~/Library/Caches/com.webcatalog.jordan",
    "~/Library/Caches/com.webcatalog.jordan.ShipIt",
    "~/Library/Preferences/com.webcatalog.jordan.plist",
    "~/Library/Saved Application State/com.webcatalog.jordan.savedState",
  ]
end
