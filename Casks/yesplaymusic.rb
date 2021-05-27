cask "yesplaymusic" do
  version "0.3.9"

  if Hardware::CPU.intel?
    sha256 "098e2755fe3b1446d59d1830b41a74bc147057a60bb6d63d6c4e83e101965430"

    url "https://github.com/qier222/YesPlayMusic/releases/download/v#{version}/YesPlayMusic-mac-#{version}.dmg"
  else
    sha256 "a1eee789c8f02a331302090b86ffa78e6e496ff3cb0f8f5bad9831847b12cbf7"

    url "https://github.com/qier222/YesPlayMusic/releases/download/v#{version}/YesPlayMusic-mac-#{version}-arm64.dmg"
  end

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
