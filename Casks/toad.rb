cask 'toad' do
  version '2.4.2'
  sha256 '9e55c4bae6da20bd3045acd35023a167362c768c0e0a55481eea5a9d83053823'

  # community-downloads.quest.com/toadsoft/toadmacedition was verified as official when first introduced to the cask
  url "http://community-downloads.quest.com/toadsoft/toadmacedition/ToadMacEdition_#{version.no_dots}.zip"
  name 'Toad'
  homepage 'https://www.toadworld.com/products/toad-mac-edition'

  pkg "ToadMacEdition_AppStore_#{version.no_dots}.pkg"

  uninstall pkgutil: 'com.dell.Toad'
end
