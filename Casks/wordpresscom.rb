cask "wordpresscom" do
  version "8.0.1"
  sha256 "2cef000d6a1d3797a27c286363759268ea840269eacaafccb2ecbd8c3ede9a04"

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
