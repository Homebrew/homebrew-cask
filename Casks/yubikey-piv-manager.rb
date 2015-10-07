cask :v1 => 'yubikey-piv-manager' do
  version '1.0.2'
  sha256 '2011c13b747c6bb51a87fce5c1df65a36f8afbfcf110c5c870a960cf84acdcdc'

  url "https://developers.yubico.com/yubikey-piv-manager/Releases/yubikey-piv-manager-#{version}-mac.pkg"
  name 'YubiKey PIV Manager'
  homepage 'https://developers.yubico.com/yubikey-piv-manager/'
  license :gpl

  pkg "yubikey-piv-manager-#{version}-mac.pkg"

  uninstall :pkgutil => 'com.yubico.pkg.YubiKeyPIVManager'
end
