cask "tiny-player" do
  version "1.6.6"
  sha256 "fa77e35b90db7ba043b335544fa52af1b808103cc27dcbc6b2cfbb633219ef22"

  url "https://download.catnapgames.com/TinyPlayer-#{version}.zip"
  name "Tiny Player for Mac"
  desc "Media player"
  homepage "https://www.catnapgames.com/tiny-player-for-mac/"

  livecheck do
    url "https://download.catnapgames.com/TinyPlayerAppcast.xml"
    strategy :sparkle, &:short_version
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
