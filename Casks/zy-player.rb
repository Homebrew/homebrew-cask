cask "zy-player" do
  version "2.8.0"
  sha256 "7c072abf6ade74b74e020ab74d039825f9534de488390fed0403e8a72a2d6669"

  url "https://github.com/Hunlongyu/ZY-Player/releases/download/v#{version}/ZY-Player-#{version}.dmg"
  name "ZY Player"
  desc "Video resource player"
  homepage "https://github.com/Hunlongyu/ZY-Player"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ZY Player.app"

  zap trash: [
    "~/Library/Application Support/zy",
    "~/Library/Preferences/com.hunlongyu.zy.plist",
    "~/Library/Saved Application State/com.hunlongyu.zy.savedState",
  ]
end
