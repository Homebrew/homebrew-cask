cask "wordpresscom" do
  arch arm: "arm64", intel: "x64"

  version "8.2.2"
  sha256 arm:   "46d410213a7fbb08429ccb7c9dbe7e05d9c6eed8c49edc79f474eda087147bec",
         intel: "5a9a3d52b797112ec0b7a703ed3bc811c1b5d4c1d21822e9a3734daf56ff6ae0"

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
