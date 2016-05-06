cask 'toad' do
  version '2.3.8'
  sha256 '2b0c98ea6d8306175ea6478f32ae656891e58a8b410c36d3ab84894ded584daf'

  # http://community-downloads.quest.com/toadsoft/ was verified as official when first introduced to the cask
  url "http://community-downloads.quest.com/toadsoft/toadmacedition/ToadMacEdition_#{version.no_dots}.zip"
  name 'Toad'
  homepage 'https://www.toadworld.com/products/toad-mac-edition'
  license :gratis

  pkg "ToadMacEdition_AppStore_#{version.no_dots}.pkg"

  uninstall pkgutil: 'com.dell.Toad'
end
