cask "yesplaymusic" do
  version "0.3.3"
  sha256 "2a58aecf464c3bcb3b2060445b7b790e6d8e86a63013bb2aacaddf418e011a3a"

  url "https://github.com/qier222/YesPlayMusic/releases/download/v#{version}/YesPlayMusic-#{version}-mac.dmg"
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
