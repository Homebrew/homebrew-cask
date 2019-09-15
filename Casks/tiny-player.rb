cask 'tiny-player' do
  version '1.2.10'
  sha256 '2ae80b4b6d704d3a97ab212f8374a85cd4e9a8412ae1ea58c2d5539bd99db1d9'

  url "https://download.catnapgames.com/TinyPlayer-#{version}.zip"
  appcast 'https://download.catnapgames.com/TinyPlayerAppcast.xml'
  name 'Tiny Player for Mac'
  homepage 'https://www.catnapgames.com/tiny-player-for-mac/'

  auto_updates true

  app 'Tiny Player.app'
end
