cask 'tiny-player' do
  version '1.2.4'
  sha256 '8c06712f6d7c4f543c894a51f20f2321c6af7bf3b9139ab76f1625eddd24c39c'

  url "http://download.catnapgames.com/TinyPlayer-#{version}.zip"
  appcast 'http://download.catnapgames.com/TinyPlayerAppcast.xml'
  name 'Tiny Player for Mac'
  homepage 'http://www.catnapgames.com/tiny-player-for-mac/'

  auto_updates true

  app 'Tiny Player.app'
end
