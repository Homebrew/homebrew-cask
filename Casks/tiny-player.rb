cask 'tiny-player' do
  version :latest
  sha256 :no_check

  url 'http://download.catnapgames.com/TinyPlayer.zip'
  name 'Tiny Player for Mac'
  homepage 'http://www.catnapgames.com/tiny-player-for-mac/'

  auto_updates

  app 'Tiny Player.app'
end
