cask 'texshop' do
  version '3.68'
  sha256 '32fd24cdd544b7cd1c72403fefaba24483388fe180283e63e290803bf08e75fc'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.sub('.', '')}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          checkpoint: '5d86649f1b35d11de653458f126b161afd828614d728554dc195f1eee66b8442'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop'
  license :gpl

  app 'TeXShop.app'
end
