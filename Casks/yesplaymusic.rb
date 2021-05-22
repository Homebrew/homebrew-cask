cask "yesplaymusic" do
  version "0.3.8"

  if Hardware::CPU.intel?
    sha256 "3158785dbaec678c1b24347727a71867e04f765789d558e198cd8a8db733d191"

    url "https://github.com/qier222/YesPlayMusic/releases/download/v#{version}/YesPlayMusic-mac-#{version}.dmg"
  else
    sha256 "c3573e998d3ad8511f2cce4a146fae9634df3e68228a706fda0b4dba1512d57a"

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
