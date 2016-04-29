cask 'yubico-authenticator' do
  version '2.3.0'
  sha256 '837d4e0d7255ffb5dc161c88fdc49feaa4a63d3004e2442509e80c6d0b62905e'

  url "https://developers.yubico.com/yubioath-desktop/Releases/yubioath-desktop-#{version}-mac.pkg"
  name 'Yubico Authenticator'
  homepage 'https://developers.yubico.com/yubioath-desktop/'
  license :gpl

  pkg "yubioath-desktop-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.pkg.YubicoAuthenticatoOSX'
end
