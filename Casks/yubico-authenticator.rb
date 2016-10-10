cask 'yubico-authenticator' do
  version '3.0.1'
  sha256 '07b897f6361dc11042e1dc5429561ab9b6ee2564748e7243d1017d5c4af9cf6f'

  url "https://developers.yubico.com/yubioath-desktop/Releases/yubioath-desktop-#{version}-mac.pkg"
  name 'Yubico Authenticator'
  homepage 'https://developers.yubico.com/yubioath-desktop/'

  pkg "yubioath-desktop-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.pkg.YubicoAuthenticator'
end
