cask :v1 => 'texshop' do
  version '3.58'
  sha256 '182d257d00344c4e03523668f5c94cb23e2a32791efa7e46d5c1bf908a11d423'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.sub('.','')}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          :sha256 => '9fa66294d1e61895b71299377546698427ef6e91a3cb1732c3544095850334ca'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop'
  license :gpl

  app 'TexShop.app'
end
