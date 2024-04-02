cask "twitch-studio" do
  version "0.114.8"
  sha256 :no_check

  url "https://live.release.spotlight.twitchsvc.net/installer/mac/twitchstudio.dmg",
      verified: "live.release.spotlight.twitchsvc.net/"
  name "Twitch Studio"
  desc "Free streaming software designed for new streamers"
  homepage "https://www.twitch.tv/broadcast/studio/"

  deprecate! date: "2024-03-31", because: :discontinued

  auto_updates true

  app "Twitch Studio.app"

  zap trash: [
    "~/Library/Application Support/Twitch Studio",
    "~/Library/Application Support/twitch-desktop-electron-platform",
    "~/Library/Preferences/com.twitch.spotlight.plist",
  ]
end
