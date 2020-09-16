cask "tiny-player" do
  version "1.2.12"
  sha256 "b0163d8bf55e32d634ea1f04dc1453c1d927d2c418c8479caf0911286f6ac52a"

  url "https://download.catnapgames.com/TinyPlayer-#{version}.zip"
  appcast "https://download.catnapgames.com/TinyPlayerAppcast.xml"
  name "Tiny Player for Mac"
  homepage "https://www.catnapgames.com/tiny-player-for-mac/"

  auto_updates true

  app "Tiny Player.app"
end
