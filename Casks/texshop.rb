cask 'texshop' do
  version '3.74'
  sha256 'c36bb93de511de24325a422bdbbb3c33d857f7b8a56c044c5359092d927d9cb8'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.sub('.', '')}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          checkpoint: '5a6007acc10ad5af8a5d4d1a961d32a201319771de5fe7acb05b424ac02b7d50'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop'

  app 'TeXShop.app'
end
