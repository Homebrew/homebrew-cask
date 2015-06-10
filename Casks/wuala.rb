cask :v1 => 'wuala' do
  version :latest
  sha256 :no_check

  url 'https://cdn.wuala.com/files/WualaInstaller.dmg'
  name 'Wuala'
  homepage 'https://www.wuala.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Wuala.app'
end
