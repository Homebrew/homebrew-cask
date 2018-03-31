cask 'tiny-player' do
  version '1.2.2'
  sha256 'edff4a594d95c57ca0e94b9fcbd10377568d5b9cedea02a5ab351511563a0ae0'

  url "http://download.catnapgames.com/TinyPlayer-#{version}.zip"
  appcast 'http://download.catnapgames.com/TinyPlayerAppcast.xml',
          checkpoint: '06cf9ce94663f1d09710635d92bba152ef8b894682cd223d29349986d7c8c6ee'
  name 'Tiny Player for Mac'
  homepage 'http://www.catnapgames.com/tiny-player-for-mac/'

  auto_updates true

  app 'Tiny Player.app'
end
