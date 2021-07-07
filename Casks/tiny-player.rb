cask "tiny-player" do
  version "1.4.3,169"
  sha256 "9958407826c70c1694fce0d0d2d6f9d8fc344b4a6e9512c75ee2cda1b4a7822b"

  url "https://download.catnapgames.com/TinyPlayer-#{version.before_comma}.zip"
  name "Tiny Player for Mac"
  desc "Media player"
  homepage "https://www.catnapgames.com/tiny-player-for-mac/"

  livecheck do
    url "https://download.catnapgames.com/TinyPlayerAppcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Tiny Player.app"

  zap trash: [
    "~/Library/Application Support/Tiny Player",
    "~/Library/Caches/com.catnapgames.playermac",
    "~/Library/Preferences/com.catnapgames.playermac.plist",
  ]
end
