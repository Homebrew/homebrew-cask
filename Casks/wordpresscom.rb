cask "wordpresscom" do
  version "6.1.0"
  sha256 "9ae2c56be5142a1fc9c1644a50034f49628061fe2411ba22996bdf480a683d73"

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  appcast "https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable"
  name "WordPress.com"
  desc "Wordpress client"
  homepage "https://apps.wordpress.com/desktop/"

  app "WordPress.com.app"

  zap trash: [
    "~/Library/Application Support/Wordpress.com",
    "~/Library/Preferences/com.automattic.wordpress.helper.plist",
    "~/Library/Preferences/com.automattic.wordpress.plist",
    "~/Library/Saved Application State/com.automattic.wordpress.savedState",
  ]
end
