cask 'texshop' do
  version '3.82'
  sha256 '382f305237e7df7bfe17b5b3213cbff478c9ded358eccc8a9e3d26874dc3afdc'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.no_dots}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          checkpoint: '048d0cc8d8c13af4f5e2702c9a50d0fbe1c2db15df8153dee4b6a0da9463ceaf'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop/'

  depends_on macos: '>= :mountain_lion'

  app 'TeXShop.app'
end
