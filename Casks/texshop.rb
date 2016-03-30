cask 'texshop' do
  version '3.61'
  sha256 '5adedc5486cbd72ba7acd162d0e0230c2c228a153658fd98df7fcce1fd5c5323'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.sub('.', '')}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          checkpoint: 'd58cf14129f8aecf5a01b498362d69959effdf64a7db8953c75f0b5319ce4d22'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop'
  license :gpl

  app 'TeXShop.app'
end
