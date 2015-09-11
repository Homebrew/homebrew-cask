cask :v1 => 'yubico-authenticator' do
  version '2.0.1'
  sha256 '9c36e1b8b2afd98213ae1fba5a97916d920a0a8c9cbe758719e703ea4e6abeff'

  url "https://developers.yubico.com/yubioath-desktop/Releases/yubioath-desktop-#{version}-mac.pkg"
  name 'Yubico Authenticator'
  homepage 'https://developers.yubico.com/yubioath-desktop/'
  license :gpl

  pkg "yubioath-desktop-#{version}-mac.pkg"

  uninstall :pkgutil => 'com.yubico.pkg.YubicoAuthenticatoOSX'
end
