cask "whalebird" do
  version "4.7.4"
  sha256 "ec9d9c0655d8725adebce539191de5bdc71b3c3b6dad71a911459dda7bd72af0"

  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-universal.dmg",
      verified: "github.com/h3poteto/whalebird-desktop/"
  name "Whalebird"
  desc "Mastodon, Pleroma and Misskey client"
  homepage "https://whalebird.social/"

  app "Whalebird.app"

  zap trash: [
    "~/Library/Application Support/Whalebird",
    "~/Library/Logs/Whalebird",
    "~/Library/Preferences/org.whalebird.desktop.plist",
    "~/Library/Saved Application State/org.whalebird.desktop.savedState",
  ]
end
