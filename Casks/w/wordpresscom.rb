cask "wordpresscom" do
  arch arm: "arm64", intel: "x64"

  version "8.2.3"
  sha256 arm:   "6e584669c8d8fe7b96d75f99692cb102a654940fb5598ea0bc369a21e5a283e5",
         intel: "6bcff34d7a1590ccb8410d890252633e2c05cd8101d5b0d70f5b08f960aa7ca2"

  url "https://github.com/Automattic/wp-desktop/releases/download/v#{version}/wordpress.com-macOS-dmg-#{version}-#{arch}.dmg",
      verified: "github.com/Automattic/wp-desktop/"
  name "WordPress.com"
  desc "WordPress client"
  homepage "https://apps.wordpress.com/desktop/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "WordPress.com.app"

  uninstall quit: "com.automattic.wordpress"

  zap trash: [
    "~/Library/Application Support/Caches/wordpressdesktop-updater",
    "~/Library/Application Support/Wordpress.com",
    "~/Library/Caches/com.automattic.wordpress",
    "~/Library/Caches/com.automattic.wordpress.ShipIt",
    "~/Library/HTTPStorages/com.automattic.wordpress",
    "~/Library/Preferences/ByHost/com.automattic.wordpress.ShipIt.*.plist",
    "~/Library/Preferences/com.automattic.wordpress*.plist",
    "~/Library/Saved Application State/com.automattic.wordpress.savedState",
  ]
end
