cask 'tonido' do
  version :latest
  sha256 :no_check

  url 'http://www.tonido.com/download.php?TonidoSetup.dmg'
  name 'Tonido'
  homepage 'http://www.tonido.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Tonido.app'
end
