cask "twitch-studio" do
  version "0.108.4"
  sha256 :no_check

  url "https://live.release.spotlight.twitchsvc.net/installer/mac/twitchstudio.dmg",
      verified: "live.release.spotlight.twitchsvc.net/"
  name "twitch-studio"
  desc "Free streaming software designed for new streamers"
  homepage "https://www.twitch.tv/broadcast/studio/"

  app "Twitch Studio.app"

  zap trash: [
    "~/Library/Application Support/Twitch Studio",
    "~/Library/Application Support/twitch-desktop-electron-platform",
    "~/Library/Preferences/com.twitch.spotlight.plist",
  ]
end
