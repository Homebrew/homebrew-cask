cask :v1 => 'yubico-authenticator' do
  version '0.1.1'
  sha256 'ac181f1ff3684ba127315743ea45031bcee8142a9a6dbe0eefc31f628c2728b0'

  url "https://developers.yubico.com/yubioath-desktop/Releases/yubioath-desktop-#{version}.pkg"
  name 'Yubico Authenticator'
  homepage 'https://developers.yubico.com/yubioath-desktop/'
  license :gpl

  pkg "yubioath-desktop-#{version}.pkg"

  uninstall :pkgutil => 'com.yubico.pkg.YubicoAuthenticatoOSX'
end
