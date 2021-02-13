cask "tiny-player" do
  version "1.3,154"
  sha256 "740ed910488fb904aecca11ec4c59c7dd70b0fd2e61641090da309d686f06ccd"

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
