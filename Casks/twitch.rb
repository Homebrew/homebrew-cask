cask "twitch" do
  version "8.60.1"
  sha256 :no_check

  url "https://desktop.twitchsvc.net/installer/mac/Twitch.dmg",
      verified: "desktop.twitchsvc.net/installer/"
  name "Twitch"
  homepage "https://app.twitch.tv/"

  app "Twitch.app"

  zap trash: [
    "~/Library/Preferences/com.twitch.twitchapp.helper.plist",
    "~/Library/Preferences/com.twitch.twitchapp.plist",
    "~/Library/Saved Application State/com.twitch.twitchapp.savedState",
  ]
end
