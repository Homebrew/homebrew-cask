cask 'texshop' do
  version '3.71'
  sha256 '7d8291be1a1c1e5bec0526fc33ffa6201ea5261f6f413485a983f85024206542'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.sub('.', '')}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          checkpoint: '24e9edd72bf2e3c9aad8ca98e539a90369e20b3040be87cd9f5ee6acf75b5cea'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop'
  license :gpl

  app 'TeXShop.app'
end
