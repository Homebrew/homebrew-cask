class YubikeyPersonalizationGui < Cask
  version '3.1.14'
  sha256 'f0c3d016b90f54e69525d2fec4dee89df499862e4a8a1ad3323e0fca57287408'

  url 'https://www.yubico.com/wp-content/uploads/2012/09/yubikey-personalization-gui-3.1.14.pkg'
  homepage 'http://www.yubico.com/products/services-software/personalization-tools/use/'

  install 'yubikey-personalization-gui-3.1.14.pkg'
  uninstall :pkgutil => 'com.yubico.YKPersonalization'
end
