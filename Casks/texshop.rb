cask 'texshop' do
  version '3.62'
  sha256 '2862f8a9f05d13c96c61b129460087efc9f7109675d5157feca0265b8fd7c954'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.sub('.', '')}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          checkpoint: 'c3efe4c77f36c56ad495e4b0f45aa5353c7b060e996a4e5fb48a8c3daab2c44b'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop'
  license :gpl

  app 'TeXShop.app'
end
