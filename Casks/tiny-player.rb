cask 'tiny-player' do
  version '1.2.7'
  sha256 '8c1dd41399b67068eeaeb066f9fcfe5748348aa1ecc052e7971103ed8ef356a0'

  url "http://download.catnapgames.com/TinyPlayer-#{version}.zip"
  appcast 'http://download.catnapgames.com/TinyPlayerAppcast.xml'
  name 'Tiny Player for Mac'
  homepage 'http://www.catnapgames.com/tiny-player-for-mac/'

  auto_updates true

  app 'Tiny Player.app'
end
