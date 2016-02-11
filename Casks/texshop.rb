cask 'texshop' do
  version '3.60'
  sha256 'f8f1a62e8a9c02229f17e8bf69182c14125a409c64f0b3133017f848b8761993'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.sub('.', '')}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          checkpoint: 'be52319022e79920cb5001bb885635652254a7e4bc586d3595a5bef1f2b7d97a'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop'
  license :gpl

  app 'TeXShop.app'
end
