cask "tiny-player" do
  version "1.4.2,167"
  sha256 "552392f30edfc767a484e4b983c24c9f2230ea3301bf5be538c420b4e57b6b13"

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
