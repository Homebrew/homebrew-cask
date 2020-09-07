cask "wordpresscom" do
  version "6.0.3"
  sha256 "a79497e7ea7260b5caf012605c97cd0fb1c7b7694eaee48a88aa8afa87238923"

  url "https://public-api.wordpress.com/rest/v1.1/desktop/osx/download?type=app&ref=update&version=#{version}"
  appcast "https://public-api.wordpress.com/rest/v1.1/desktop/osx/version?compare=0.1.0&channel=stable"
  name "WordPress.com"
  homepage "https://apps.wordpress.com/desktop/"

  app "WordPress.com.app"

  zap trash: [
    "~/Library/Application Support/Wordpress.com",
    "~/Library/Preferences/com.automattic.wordpress.helper.plist",
    "~/Library/Preferences/com.automattic.wordpress.plist",
    "~/Library/Saved Application State/com.automattic.wordpress.savedState",
  ]
end
