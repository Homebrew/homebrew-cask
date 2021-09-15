cask "zy-player" do
  version "2.8.5"
  sha256 "6ea222c64b979e096efbf4126cbdc2b2c700ca2da60dc17a6961d61a272d6e74"

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
