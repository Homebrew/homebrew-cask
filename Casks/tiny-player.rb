cask "tiny-player" do
  version "1.4.0,164"
  sha256 "c55ced0db548e77284f285b6c223ff13876c90026cb11ff327e37da78e476ee3"

  url "https://download.catnapgames.com/TinyPlayer-#{version.before_comma}.zip"
  name "Tiny Player for Mac"
  homepage "https://www.catnapgames.com/tiny-player-for-mac/"

  livecheck do
    url "https://download.catnapgames.com/TinyPlayerAppcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Tiny Player.app"
end
