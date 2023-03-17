cask "whalebird" do
  version "5.0.2"
  sha256 "d7cd43fbeea83f13bba954fafe3aa1b01ed023bdaab29fbd8b1efc2ca6a43794"

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
