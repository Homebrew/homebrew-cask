cask 'texshop' do
  version '3.81'
  sha256 '3c9720165a3171377afa6aa2c249297a22688956efd06a001929f4d636559694'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.no_dots}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          checkpoint: 'ad764d21b8ce2d4e2aa7aef12b28ec16f90480de551f3faded46060c5df6aa13'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop/'

  depends_on macos: '>= :mountain_lion'

  app 'TeXShop.app'
end
