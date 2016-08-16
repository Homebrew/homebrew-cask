cask 'texshop' do
  version '3.66'
  sha256 '14e058a114568491d0da7bb94e4bb5b906bc570e6102e1b82547886bed95e710'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.sub('.', '')}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          checkpoint: 'aed778ab781bd3a5906f983f8b8c06a5cfad95e0fbbc4bccb7eacc5bb30d7585'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop'
  license :gpl

  app 'TeXShop.app'
end
