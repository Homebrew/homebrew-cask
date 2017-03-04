cask 'yubikey-piv-manager' do
  version '1.4.1'
  sha256 '67b934c368603d1ebc6908831487a2db1b94066dc1dbe2b2204c0e87e4b9a3a8'

  url "https://developers.yubico.com/yubikey-piv-manager/Releases/yubikey-piv-manager-#{version}-mac.pkg"
  appcast 'https://developers.yubico.com/yubikey-piv-manager/Release_Notes.html',
          checkpoint: '62355a665f5869a84d67f8ed69596f8621730fe9af4a76bbd590f701db9d2343'
  name 'YubiKey PIV Manager'
  homepage 'https://developers.yubico.com/yubikey-piv-manager/'

  pkg "yubikey-piv-manager-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.pkg.YubiKeyPIVManager'
end
