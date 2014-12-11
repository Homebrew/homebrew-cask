cask :v1 => 'wuala' do
  version :latest
  sha256 :no_check

  url 'https://cdn.wuala.com/files/WualaInstaller.dmg'
  homepage 'http://wuala.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Wuala.app'
end
