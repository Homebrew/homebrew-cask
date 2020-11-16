cask "wordpresscom" do
  version "6.4.0"
  sha256 "970c7eb6b697f710c814f5abf7160f6d3523fb642eeeb6f2d5e49250156d6d17"

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
