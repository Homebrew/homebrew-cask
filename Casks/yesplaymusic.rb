cask "yesplaymusic" do
  version "0.4.5"
  sha256 "46a19c67d2c36df2141dcf3bfd5d567add9f9118606f70098920fa4deb065dba"

  url "https://github.com/qier222/YesPlayMusic/releases/download/v#{version}/YesPlayMusic-mac-#{version}-universal.dmg"
  name "YesPlayMusic"
  desc "Third-party NetEase cloud player"
  homepage "https://github.com/qier222/YesPlayMusic"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "YesPlayMusic.app"

  zap trash: [
    "~/Library/Application Support/YesPlayMusic",
    "~/Library/Preferences/com.electron.yesplaymusic.plist",
    "~/Library/Saved Application State/com.electron.yesplaymusic.savedState",
  ]
end
