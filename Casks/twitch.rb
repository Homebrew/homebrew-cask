cask "twitch" do
  version :latest
  sha256 :no_check

  # desktop.twitchsvc.net/installer/ was verified as official when first introduced to the cask
  url "https://desktop.twitchsvc.net/installer/mac/Twitch.dmg"
  name "Twitch"
  homepage "https://app.twitch.tv/"

  app "Twitch.app"

  zap trash: [
    "~/Library/Preferences/com.twitch.twitchapp.helper.plist",
    "~/Library/Preferences/com.twitch.twitchapp.plist",
    "~/Library/Saved Application State/com.twitch.twitchapp.savedState",
  ]
end
