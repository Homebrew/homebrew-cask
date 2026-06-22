cask "wordpresscom" do
  arch arm: "arm64", intel: "x64"

  version "8.2.1"
  sha256 arm:   "f4fbf9a3ac8e8724f0350201cee346e8d53c1e51f95359a564ea2c45722294aa",
         intel: "e43e8dfc8cb4accacf2e87799e1ad49f4f8acc7be9becfd5c86f5d498cdabe92"

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
