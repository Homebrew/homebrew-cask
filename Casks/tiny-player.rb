cask "tiny-player" do
  version "1.6.5,220"
  sha256 "3a80545e6f2c4745eee9fbe01933d387684290e528f865b471b14dd71b09eb15"

  url "https://download.catnapgames.com/TinyPlayer-#{version.csv.first}.zip"
  name "Tiny Player for Mac"
  desc "Media player"
  homepage "https://www.catnapgames.com/tiny-player-for-mac/"

  livecheck do
    url "https://download.catnapgames.com/TinyPlayerAppcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Tiny Player.app"

  zap trash: [
    "~/Library/Application Support/Tiny Player",
    "~/Library/Caches/com.catnapgames.playermac",
    "~/Library/Preferences/com.catnapgames.playermac.plist",
  ]
end
