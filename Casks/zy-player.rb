cask "zy-player" do
  version "2.7.2"
  sha256 "63956f1c1dda540670b9fac3c0c4a4b77f4ed46a0b374f3dbab71c46840e4048"

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
