cask 'yubico-authenticator' do
  version '2.2.1'
  sha256 '1c68b4589f377e6bae6f918e8018ed942172a4b71bcd3f907cdbca2b3f363313'

  url "https://developers.yubico.com/yubioath-desktop/Releases/yubioath-desktop-#{version}-mac.pkg"
  name 'Yubico Authenticator'
  homepage 'https://developers.yubico.com/yubioath-desktop/'
  license :gpl

  pkg "yubioath-desktop-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.pkg.YubicoAuthenticatoOSX'
end
