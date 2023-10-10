cask "whalebird" do
  arch arm: "arm64", intel: "x64"

  version "5.1.1"
  sha256 arm:   "86c89c691e98ef1aa7ed1c1f5d114e33d830d79a55ba515681755b5d16981839",
         intel: "e4ebea91505a3ef8f81eba94cd302952674d5055563c7fd4fdacb030bce37c1c"

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
