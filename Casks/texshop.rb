cask 'texshop' do
  version '3.73'
  sha256 'c12d44c5f58f7c33b575e3f8063055138177c9ee399ebaf5a7bf07a3a99b45bc'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.sub('.', '')}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          checkpoint: '43e3e85c1e1d3a3a34b4c42cb41a45d1066ffa8d1c373fee9a28533cf3d86f63'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop'

  app 'TeXShop.app'
end
