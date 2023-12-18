cask "wordpresscom" do
  arch arm:   "arm64",
       intel: "x64"

  version "8.0.3"
  sha256 arm:   "fa918e3df870deafe299b11a16b3753f6fb8a1af36b0c616620c1c1b98e20ec8",
         intel: "98f54a7559b57146dc3689c83609d82f0c57fa0f2576d5a84b38b18ea1e2bec7"

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
  depends_on macos: ">= :high_sierra"

  app "WordPress.com.app"

  zap trash: [
    "~/Library/Application Support/Wordpress.com",
    "~/Library/Application Support/Caches/wordpressdesktop-updater",
    "~/Library/Caches/com.automattic.wordpress",
    "~/Library/Caches/com.automattic.wordpress.ShipIt",
    "~/Library/Preferences/ByHost/com.automattic.wordpress.ShipIt.*.plist",
    "~/Library/Preferences/com.automattic.wordpress*.plist",
    "~/Library/HTTPStorages/com.automattic.wordpress",
    "~/Library/Saved Application State/com.automattic.wordpress.savedState",
  ]
end
