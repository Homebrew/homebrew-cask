cask 'tiny-player' do
  version '1.2.11'
  sha256 '462e68f8dfe317a88f649ab71308790dc397a11e2b61b6153cb80e3d15bc4897'

  url "https://download.catnapgames.com/TinyPlayer-#{version}.zip"
  appcast 'https://download.catnapgames.com/TinyPlayerAppcast.xml'
  name 'Tiny Player for Mac'
  homepage 'https://www.catnapgames.com/tiny-player-for-mac/'

  auto_updates true

  app 'Tiny Player.app'
end
