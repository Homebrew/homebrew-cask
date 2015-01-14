cask :v1 => 'yubikey-personalization-gui' do
  version '3.1.18'
  sha256 'b6acac4b25cc0758e3333ee11ef9fdd966766e063cb051a9f9092bb5bf8e0dc0'

  url "https://developers.yubico.com/yubikey-personalization-gui/Releases/yubikey-personalization-gui-#{version}.pkg"
  homepage 'http://www.yubico.com/products/services-software/personalization-tools/use/'
  license :bsd

  pkg "yubikey-personalization-gui-#{version}.pkg"

  uninstall :pkgutil => 'com.yubico.YKPersonalization'
end
