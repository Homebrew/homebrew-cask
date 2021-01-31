cask "yesplaymusic" do
  version "0.3.3"
  sha256 "19f14abf0c2d8bea740a88473c77a3c25601361df4500b97a39bd6afcea2d05c"

  url "https://github.com/qier222/YesPlayMusic/releases/download/v#{version}/YesPlayMusic-#{version}-mac.zip"
  appcast "https://github.com/qier222/YesPlayMusic/releases.atom"
  name "YesPlayMusic"
  desc "Third-party NetEase Cloud Player"
  homepage "https://github.com/qier222/YesPlayMusic"

  app "YesPlayMusic.app"

  zap trash: [
    "~/Library/Application Support/YesPlayMusic",
    "~/Library/Preferences/com.electron.yesplaymusic.plist",
    "~/Library/Saved Application State/com.electron.yesplaymusic.savedState",
  ]
end
