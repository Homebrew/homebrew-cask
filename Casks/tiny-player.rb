cask "tiny-player" do
  version "1.5.9,187"
  sha256 "5cd46cecbe1d9a444ae84dc6330cd2638edcf83bb819d859014ceb9fd35d7905"

  url "https://download.catnapgames.com/TinyPlayer-#{version.before_comma}.zip"
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
