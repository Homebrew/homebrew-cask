cask 'tiny-player' do
  version '1.2.9'
  sha256 '9a08626732d73fcc3a5c09901cf8e06059ecc41181580588d410468f368f3190'

  url "http://download.catnapgames.com/TinyPlayer-#{version}.zip"
  appcast 'http://download.catnapgames.com/TinyPlayerAppcast.xml'
  name 'Tiny Player for Mac'
  homepage 'http://www.catnapgames.com/tiny-player-for-mac/'

  auto_updates true

  app 'Tiny Player.app'
end
