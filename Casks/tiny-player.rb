cask "tiny-player" do
  version "1.3.2,155"
  sha256 "29c3f4675a91a95427c9bddbd856cd90b3ed02ceda2ac5fa776f7e697bb2ebc0"

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
