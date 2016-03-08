cask 'wuala' do
  version :latest
  sha256 :no_check

  url 'https://cdn.wuala.com/files/WualaInstaller.dmg'
  name 'Wuala'
  homepage 'https://www.wuala.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Wuala.app'
end
