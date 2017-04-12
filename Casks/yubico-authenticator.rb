cask 'yubico-authenticator' do
  version '4.1.0'
  sha256 'c216a45f631899fc2869fd0f1d5b851a2df3db009a1e50bf93b219a611ff83b6'

  url "https://developers.yubico.com/yubioath-desktop/Releases/yubioath-desktop-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubioath-desktop/Release_Notes.html',
          checkpoint: 'b95445abc24b000154851bd7e3d3fefa84507e5455b140b3bb899d2954a1dcd4'
  name 'Yubico Authenticator'
  homepage 'https://developers.yubico.com/yubioath-desktop/'

  pkg "yubioath-desktop-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.pkg.YubicoAuthenticator'
end
