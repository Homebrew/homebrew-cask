cask "twitch-studio" do
  version "0.110.25"
  sha256 :no_check

  url "https://live.release.spotlight.twitchsvc.net/installer/mac/twitchstudio.dmg",
      verified: "live.release.spotlight.twitchsvc.net/"
  name "Twitch Studio"
  desc "Free streaming software designed for new streamers"
  homepage "https://www.twitch.tv/broadcast/studio/"

  livecheck do
    url :url
    strategy :extract_plist do |versions|
      versions.values.map(&:short_version).compact.first
    end
  end

  auto_updates true

  app "Twitch Studio.app"

  zap trash: [
    "~/Library/Application Support/Twitch Studio",
    "~/Library/Application Support/twitch-desktop-electron-platform",
    "~/Library/Preferences/com.twitch.spotlight.plist",
  ]
end
