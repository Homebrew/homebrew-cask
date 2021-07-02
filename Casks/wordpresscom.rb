cask "wordpresscom" do
  version "7.0.6"
  sha256 "b302ecaa92b46caecd39eec439e7ecaec8c4368b9659c17623cb6c4753dfd592"

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
