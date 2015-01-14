cask :v1 => 'yubikey-neo-manager' do
  version '1.1.0'
  sha256 '3af16efa1ac02ea4244cf906d8d63d98e4b867b3f4ceaed668d405bd6d2b809e'

  url "https://developers.yubico.com/yubikey-neo-manager/Releases/yubikey-neo-manager-#{version}-mac.pkg"
  homepage 'https://developers.yubico.com/yubikey-neo-manager/'
  license :bsd

  pkg "yubikey-neo-manager-#{version}-mac.pkg"

  uninstall :pkgutil => 'com.yubico.pkg.YubiKeyNEOManager'
end
