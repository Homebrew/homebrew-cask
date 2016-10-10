cask 'yubikey-piv-manager' do
  version '1.4.0'
  sha256 'eb1d112990f653db02d53872370f0e960cfbc1442a0a9ffe8635c04b6f17e760'

  url "https://developers.yubico.com/yubikey-piv-manager/Releases/yubikey-piv-manager-#{version}-mac.pkg"
  name 'YubiKey PIV Manager'
  homepage 'https://developers.yubico.com/yubikey-piv-manager/'

  pkg "yubikey-piv-manager-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.pkg.YubiKeyPIVManager'
end
