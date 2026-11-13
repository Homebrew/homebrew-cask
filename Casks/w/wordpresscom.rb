cask "wordpresscom" do
  arch arm: "arm64", intel: "x64"

  version "8.2.5"
  sha256 arm:   "1a7643bb426ab7ba425ee7c17168eb0b3be25f7a6d3fff1715d3e19260396cab",
         intel: "c9d7f8bbaf4112727d50fb4f7567443eb17e3720ac85a2685290ae4ef785ea12"

  url "https://github.com/Automattic/wp-desktop/releases/download/v#{version}/wordpress.com-macOS-dmg-#{version}-#{arch}.dmg"
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
