cask 'yubikey-piv-manager' do
  version '1.2.1'
  sha256 'fd1604247655b359645fe84c7659f5d60e0d6b0ef0aba52f983e9c0b0d18c0c7'

  url "https://developers.yubico.com/yubikey-piv-manager/Releases/yubikey-piv-manager-#{version}-mac.pkg"
  name 'YubiKey PIV Manager'
  homepage 'https://developers.yubico.com/yubikey-piv-manager/'
  license :gpl

  pkg "yubikey-piv-manager-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.pkg.YubiKeyPIVManager'
end
