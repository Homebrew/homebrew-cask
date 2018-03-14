cask 'tiny-player' do
  version '1.2.1'
  sha256 '08c85c0a35422d0a3fa5ff5b4993e5b9a68e697efe85057e1b792841b53330fc'

  url "http://download.catnapgames.com/TinyPlayer-#{version}.zip"
  appcast 'http://download.catnapgames.com/TinyPlayerAppcast.xml',
          checkpoint: '9108b3673b515cdc6b13179a5f62d8a48e2e482c5e02c3f1aba7f0a2fdb1d09c'
  name 'Tiny Player for Mac'
  homepage 'http://www.catnapgames.com/tiny-player-for-mac/'

  auto_updates true

  app 'Tiny Player.app'
end
