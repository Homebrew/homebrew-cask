cask "whalebird" do
  version "6.0.2"
  sha256 "8f34f1fb4de2740f530c8696606d2d2baa771e1f5ca27415e02bc2e8837344e4"

  url "https://github.com/h3poteto/whalebird-desktop/releases/download/v#{version}/Whalebird-#{version}-mac-universal.dmg",
      verified: "github.com/h3poteto/whalebird-desktop/"
  name "Whalebird"
  desc "Mastodon, Pleroma, and Misskey client"
  homepage "https://whalebird.social/"

  app "Whalebird.app"

  zap trash: [
    "~/Library/Application Support/Whalebird",
    "~/Library/Logs/Whalebird",
    "~/Library/Preferences/social.whalebird.app.plist",
    "~/Library/Saved Application State/social.whalebird.app.savedState",
  ]
end
