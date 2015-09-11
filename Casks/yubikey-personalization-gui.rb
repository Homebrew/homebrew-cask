cask :v1 => 'yubikey-personalization-gui' do
  version '3.1.21'
  sha256 '576299eeec8ad85d3f6d9f56204022128fc32cbc062fc7ef7c48dde69b3efda1'

  url "https://developers.yubico.com/yubikey-personalization-gui/Releases/yubikey-personalization-gui-#{version}.pkg"
  name 'YubiKey Personalization GUI'
  homepage 'https://www.yubico.com/products/services-software/personalization-tools/use/'
  license :bsd

  pkg "yubikey-personalization-gui-#{version}.pkg"

  uninstall :pkgutil => 'com.yubico.YKPersonalization'
end
