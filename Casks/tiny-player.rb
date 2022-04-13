cask "tiny-player" do
  version "1.6.4,219"
  sha256 "d86b04f9f692fa1b4fa0edf09a967e4f29563695a54888881a2da0dbcb0a2d0d"

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
