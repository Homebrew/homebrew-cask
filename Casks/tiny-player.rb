cask "tiny-player" do
  version "1.2.13"
  sha256 "b4fdc7374fd7fbb28e09c1834dc88379fc939a27a1f368b6230871f0ad795836"

  url "https://download.catnapgames.com/TinyPlayer-#{version}.zip"
  appcast "https://download.catnapgames.com/TinyPlayerAppcast.xml"
  name "Tiny Player for Mac"
  homepage "https://www.catnapgames.com/tiny-player-for-mac/"

  auto_updates true

  app "Tiny Player.app"
end
