cask :v1 => 'yubikey-neo-manager' do
  version '1.0.0'
  sha256 '9e2bad45d2138d72040ef4fba8d377196d630afa1d07779217c5a9684a96df45'

  url "https://developers.yubico.com/yubikey-neo-manager/Releases/yubikey-neo-manager-#{version}-mac.pkg"
  homepage 'https://developers.yubico.com/yubikey-neo-manager/'
  license :bsd

  pkg "yubikey-neo-manager-#{version}-mac.pkg"

  uninstall :pkgutil => 'com.yubico.pkg.YubiKeyNEOManager'
end
