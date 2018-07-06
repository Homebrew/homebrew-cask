cask 'tiny-player' do
  version '1.2.3'
  sha256 'a433521c5e469e7ab03a083721162fff0bec9d1282181ca366965d5d0ee98d58'

  url "http://download.catnapgames.com/TinyPlayer-#{version}.zip"
  appcast 'http://download.catnapgames.com/TinyPlayerAppcast.xml'
  name 'Tiny Player for Mac'
  homepage 'http://www.catnapgames.com/tiny-player-for-mac/'

  auto_updates true

  app 'Tiny Player.app'
end
