cask 'toad' do
  version '2.4.0'
  sha256 '74f7d6a26c0bd5eaec2c3d2e02994fe9e89131e3f1baa8742416f9dc6222e4af'

  # community-downloads.quest.com/toadsoft/toadmacedition was verified as official when first introduced to the cask
  url "http://community-downloads.quest.com/toadsoft/toadmacedition/ToadMacEdition_#{version.no_dots}.zip"
  name 'Toad'
  homepage 'https://www.toadworld.com/products/toad-mac-edition'

  pkg "ToadMacEdition_AppStore_#{version.no_dots}.pkg"

  uninstall pkgutil: 'com.dell.Toad'
end
