cask 'toad' do
  version '2.3.6'
  sha256 '012b866e16a33293dc3ff73a4864f5ae19213b7e6f3032b37df1f712a2c0f898'

  # http://community-downloads.quest.com/toadsoft/ was verified as official when first introduced to the cask
  url "http://community-downloads.quest.com/toadsoft/toadmacedition/ToadMacEdition_#{version.no_dots}.zip"
  name 'Toad'
  homepage 'https://www.toadworld.com/products/toad-mac-edition'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "ToadMacEdition_AppStore_#{version.no_dots}.pkg"

  uninstall pkgutil: 'com.dell.Toad'
end
