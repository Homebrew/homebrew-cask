cask "wordpresscom" do
  version "8.0.2"
  sha256 "9a916800879d2363033c93702da57bfd1110efa08d113b779d30ec78d9ce19d6"

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  name "WordPress.com"
  desc "WordPress client"
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
