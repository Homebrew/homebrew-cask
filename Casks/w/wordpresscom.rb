cask "wordpresscom" do
  arch arm: "arm64", intel: "x64"

  version "8.2.0"
  sha256 arm:   "6b35cf021e6dccab53227e405e601edf0324e80c3ae919640874d1f544e88dd0",
         intel: "18e3eec4c9ee2f6919fac5d19282ffd0d9df4076fe26e2a16639723c2d106c3d"

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
