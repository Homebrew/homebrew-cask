cask :v1 => 'yubikey-piv-manager' do
  version '1.0.2'
  sha256 '87e8df64a51b566f34a216b35c6daae78d2ddbcf8fdd5d50ebe5d97e7322d151'

  url "https://developers.yubico.com/yubikey-piv-manager/Releases/yubikey-piv-manager-#{version}-mac.pkg"
  name 'YubiKey PIV Manager'
  homepage 'https://developers.yubico.com/yubikey-piv-manager/'
  license :gpl

  pkg "yubikey-piv-manager-#{version}-mac.pkg"

  uninstall :pkgutil => 'com.yubico.pkg.YubiKeyPIVManager'
end
