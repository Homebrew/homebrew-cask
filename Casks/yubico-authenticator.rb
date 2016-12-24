cask 'yubico-authenticator' do
  version '3.1.0b'
  sha256 'd16e1d0b78023f0eda16214e21e357a8dfab11328ad22e9c8537bd82da21f37a'

  url "https://developers.yubico.com/yubioath-desktop/Releases/yubioath-desktop-#{version}-mac.pkg"
  name 'Yubico Authenticator'
  homepage 'https://developers.yubico.com/yubioath-desktop/'

  pkg "yubioath-desktop-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.pkg.YubicoAuthenticator'
end
