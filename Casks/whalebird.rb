cask "whalebird" do
  arch arm: "arm64", intel: "x64"

  version "5.0.7"
  sha256 arm:   "667a67f6134975e56b791a0b9c37650385fb665bc16dc77956541ac8e979c759",
         intel: "cdd1832332c0ab9ce3175df71cb8327c6f07c69408eeeea644258567bd424090"

  url "https://github.com/h3poteto/whalebird-desktop/releases/download/v#{version}/Whalebird-#{version}-mac-#{arch}.dmg",
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
