cask 'yubico-authenticator' do
  version '4.2.0'
  sha256 'de60bc4de3f3f4f602c242151a31cf0143ed63e6ac84b09568c080f690c4e57a'

  url "https://developers.yubico.com/yubioath-desktop/Releases/yubioath-desktop-#{version}-mac.pkg"
  name 'Yubico Authenticator'
  homepage 'https://developers.yubico.com/yubioath-desktop/'

  pkg 'yubioath-desktop-4.2.0-mac.pkg'

  uninstall quit:    'com.yubico.yubioath',
            pkgutil: 'com.yubico.yubioath'
end
