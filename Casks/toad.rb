cask 'toad' do
  version '2.4.3'
  sha256 '8646f7025c9ba8f2f4ef28c66df76a261bc5e6c3e14da6384ff0e8287b87565b'

  # community-downloads.quest.com/toadsoft/toadmacedition was verified as official when first introduced to the cask
  url "http://community-downloads.quest.com/toadsoft/toadmacedition/ToadMacEdition_#{version.no_dots}.zip"
  name 'Toad'
  homepage 'https://www.toadworld.com/products/toad-mac-edition'

  pkg "ToadMacEdition_AppStore_#{version.no_dots}.pkg"

  uninstall pkgutil: 'com.dell.Toad'
end
