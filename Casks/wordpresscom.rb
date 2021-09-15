cask "wordpresscom" do
  version "7.1.0"
  sha256 "34fb84172639894f14d264800c18ccc9704a3601ff5390cd237b52391a2d4d92"

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  name "WordPress.com"
  desc "Wordpress client"
  homepage "https://apps.wordpress.com/desktop/"

  livecheck do
    url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=dmg"
    strategy :header_match
  end

  app "WordPress.com.app"

  zap trash: [
    "~/Library/Application Support/Wordpress.com",
    "~/Library/Preferences/com.automattic.wordpress.helper.plist",
    "~/Library/Preferences/com.automattic.wordpress.plist",
    "~/Library/Saved Application State/com.automattic.wordpress.savedState",
  ]
end
