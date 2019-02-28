cask 'yubico-authenticator' do
  version '4.3.5'
  sha256 'e9e668456e196ce8c04942111fc0b8cfad53ffc2f5165b3eff0e872d825b8d0f'

  url 'https://developers.yubico.com/yubioath-desktop/Releases/yubioath-desktop-4.3.5-mac.pkg'
  name 'Yubico Authenticator'
  homepage 'https://www.yubico.com/products/services-software/download/yubico-authenticator/'

  pkg 'yubioath-desktop-4.3.5-mac.pkg'

  uninstall pkgutil: 'com.yubico.yubioath'
end
