cask 'yubico-authenticator' do
  version '4.0.1'
  sha256 '62d1bd5ceeefcb03c03f92c7b8d3dd8adc9c93d5d71b397e69b5def92852f6c6'

  url "https://developers.yubico.com/yubioath-desktop/Releases/yubioath-desktop-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubioath-desktop/Release_Notes.html',
          checkpoint: '05aa040249f31c3ad1d871a5663e72aa9546e7914c8a8f8e425403378434bdc0'
  name 'Yubico Authenticator'
  homepage 'https://developers.yubico.com/yubioath-desktop/'

  pkg "yubioath-desktop-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.pkg.YubicoAuthenticator'
end
