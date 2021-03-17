cask "wordpresscom" do
  version "6.6.0"
  sha256 "887db9dc7b93b5e8da24420c4a43a4a7dc8e1d41ddf4e769ac9826af9f81d03c"

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
