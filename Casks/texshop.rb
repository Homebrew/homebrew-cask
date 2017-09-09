cask 'texshop' do
  version '3.86'
  sha256 'd186d4bb9ead44d67ae8b08f3d6f3387c187f6c8750fe6b37e06276f3d9fd267'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.no_dots}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          checkpoint: 'eebcb6ed2860e844923ed0cdb8890df9eb67161fff9a5afcadab03a36871f1c5'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop/'

  depends_on macos: '>= :mountain_lion'

  app 'TeXShop.app'
end
