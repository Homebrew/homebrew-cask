cask "whalebird" do
  version "5.0.0"
  sha256 "13449a67862a710e90813e8d9ef08d50ee833038cc94af20d723a7c35a66a190"

  url "https://github.com/h3poteto/whalebird-desktop/releases/download/v#{version}/Whalebird-#{version}-darwin-universal.dmg",
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
