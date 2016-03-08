cask 'yubikey-neo-manager' do
  version '1.4.0'
  sha256 'b1af0f922bb8b6da285bf34bc012f48773c2529b4e128fe9a48f4ef768f70bd4'

  url "https://developers.yubico.com/yubikey-neo-manager/Releases/yubikey-neo-manager-#{version}-mac.pkg"
  name 'YubiKey NEO Manager'
  homepage 'https://developers.yubico.com/yubikey-neo-manager/'
  license :bsd

  pkg "yubikey-neo-manager-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.pkg.YubiKeyNEOManager'
end
