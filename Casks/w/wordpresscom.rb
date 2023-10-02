cask "wordpresscom" do
  version "8.0.3"
  sha256 "cc5f9daccc774eb9a3fbd3533e26357ff3dd226aa95355028fdfb1d745b6619e"

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
