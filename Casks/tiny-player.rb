cask 'tiny-player' do
  version '1.2.8'
  sha256 '5ab4296fa2a6f603ddb11746b0e15d87b776c776cee24c6bb1bd1bf9adb1b56b'

  url "http://download.catnapgames.com/TinyPlayer-#{version}.zip"
  appcast 'http://download.catnapgames.com/TinyPlayerAppcast.xml'
  name 'Tiny Player for Mac'
  homepage 'http://www.catnapgames.com/tiny-player-for-mac/'

  auto_updates true

  app 'Tiny Player.app'
end
