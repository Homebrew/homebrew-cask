cask :v1 => 'yubikey-neo-manager' do
  version '1.3.0'
  sha256 '9b28bc6350a7afe2e7e3e4397423359487de876ee67aafeca7902f9aaa5f1756'

  url "https://developers.yubico.com/yubikey-neo-manager/Releases/yubikey-neo-manager-#{version}-mac.pkg"
  name 'YubiKey NEO Manager'
  homepage 'https://developers.yubico.com/yubikey-neo-manager/'
  license :bsd

  pkg "yubikey-neo-manager-#{version}-mac.pkg"

  uninstall :pkgutil => 'com.yubico.pkg.YubiKeyNEOManager'
end
