cask 'yubico-authenticator' do
  version '4.0.0'
  sha256 'a87f4a341563bb06e13439a20081e616349bd89b22c1c9ba9cac34df18ae491a'

  url "https://developers.yubico.com/yubioath-desktop/Releases/yubioath-desktop-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubioath-desktop/Release_Notes.html',
          checkpoint: '6eaf7c2a30e3991e661269db6dd6d66824023067bbbe5eb6fd4194732a49c3cd'
  name 'Yubico Authenticator'
  homepage 'https://developers.yubico.com/yubioath-desktop/'

  pkg "yubioath-desktop-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.pkg.YubicoAuthenticator'
end
