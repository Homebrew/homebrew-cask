cask 'texshop' do
  version '3.75'
  sha256 'f3d25dc4a7a8a3ccc17da13fddce19779ca51fa6d4069757dec0d92af6fc556a'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.sub('.', '')}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          checkpoint: '920914819ea0574c8fd896869b313aaeb597e6d592fd8de459cec5927991e04e'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop/'

  app 'TeXShop.app'
end
