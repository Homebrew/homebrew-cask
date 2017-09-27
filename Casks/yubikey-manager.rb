cask 'yubikey-manager' do
  version '0.3.1'
  sha256 '55190b911e44a106b5b6f288a0ccdbd853d82e1c47ef0efd1029ef8dd24b5630'

  url "https://developers.yubico.com/yubikey-manager-qt/Releases/yubikey-manager-qt-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubikey-manager-qt/Release_Notes.html',
          checkpoint: '049557d1ee8dad39dbe2a2a50605219d261dedf0d54c96099c73c1643cea2a9f'
  name 'Yubikey Manager'
  homepage 'https://developers.yubico.com/yubikey-manager/'

  pkg "yubikey-manager-qt-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.ykman'
end
