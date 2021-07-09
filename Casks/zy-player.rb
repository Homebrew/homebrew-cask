cask "zy-player" do
  version "2.8.4"
  sha256 "33e72034ce471bb0b8b635c103f7736464b53c4bae3af1a839661feadfcfda2a"

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
