cask "tiny-player" do
  version "1.6.1,207"
  sha256 "41cc1b4a720eb04512aa93b0a2c8e833c772133bacbef5583112fd23d84fb717"

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
