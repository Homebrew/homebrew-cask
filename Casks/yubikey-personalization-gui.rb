cask :v1 => 'yubikey-personalization-gui' do
  version '3.1.23'
  sha256 'f00aa7931045f64903eb94279b33b595eb3791026fa54074dba9c11ad701d089'

  url "https://developers.yubico.com/yubikey-personalization-gui/Releases/yubikey-personalization-gui-#{version}.pkg"
  name 'YubiKey Personalization GUI'
  homepage 'https://www.yubico.com/products/services-software/personalization-tools/use/'
  license :bsd

  pkg "yubikey-personalization-gui-#{version}.pkg"

  uninstall :pkgutil => 'com.yubico.YKPersonalization'
end
