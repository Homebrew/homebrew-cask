cask 'yubikey-piv-manager' do
  version '1.1.1'
  sha256 'b21953f5b992aef9295d91f8a534dedd19fcc2a8caf8501c4e3125d82eb3bfbc'

  url "https://developers.yubico.com/yubikey-piv-manager/Releases/yubikey-piv-manager-#{version}-mac.pkg"
  name 'YubiKey PIV Manager'
  homepage 'https://developers.yubico.com/yubikey-piv-manager/'
  license :gpl

  pkg "yubikey-piv-manager-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.pkg.YubiKeyPIVManager'
end
