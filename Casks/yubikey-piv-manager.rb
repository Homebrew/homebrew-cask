cask 'yubikey-piv-manager' do
  version '1.4.2'
  sha256 'a8bb9b8dcd11616a607ab6f5cb7de55f00c4e17e4cbab725884f34d952944c99'

  url "https://developers.yubico.com/yubikey-piv-manager/Releases/yubikey-piv-manager-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubikey-piv-manager/Release_Notes.html',
          checkpoint: 'f6a7b3b5eed1efb04fa174519ae3816a6beaf36c044d6d695a5264b202337b83'
  name 'YubiKey PIV Manager'
  homepage 'https://developers.yubico.com/yubikey-piv-manager/'

  pkg "yubikey-piv-manager-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.pkg.YubiKeyPIVManager'
end
