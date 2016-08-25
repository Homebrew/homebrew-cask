cask 'texshop' do
  version '3.70'
  sha256 '3f9d3f16d6cccba43eaaae8491cd88039be4694d5da03bda5590df6302ba26ad'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.sub('.', '')}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          checkpoint: 'c05c359c5c2711b42f6ea57a21cc3adf86da1ad8fa53083911ac7b349972430c'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop'
  license :gpl

  app 'TeXShop.app'
end
