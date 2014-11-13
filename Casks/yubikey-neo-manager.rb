cask :v1 => 'yubikey-neo-manager' do
  version '0.2.2'
  sha256 '4ea699743fd90586ef48b9d906bd4ad109eedeaa11b58028431197bd8396897a'

  url "https://developers.yubico.com/yubikey-neo-manager/Releases/yubikey-neo-manager-#{version}-mac.pkg"
  homepage 'https://www.yubico.com/2014/04/yubikey-neo-manager-application/'
  license :bsd

  pkg "yubikey-neo-manager-#{version}-mac.pkg"
  uninstall :pkgutil => 'com.yubico.pkg.YubiKeyNEOManager'
end
