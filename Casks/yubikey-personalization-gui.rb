cask :v1 => 'yubikey-personalization-gui' do
  version '3.1.20'
  sha256 '6b0ba303d52f86f971d7fe8e4fb2cc0b05a1ef9c4b4167090dd6a5ef23e10e01'

  url "https://developers.yubico.com/yubikey-personalization-gui/Releases/yubikey-personalization-gui-#{version}.pkg"
  name 'YubiKey Personalization GUI'
  homepage 'https://www.yubico.com/products/services-software/personalization-tools/use/'
  license :bsd

  pkg "yubikey-personalization-gui-#{version}.pkg"

  uninstall :pkgutil => 'com.yubico.YKPersonalization'
end
