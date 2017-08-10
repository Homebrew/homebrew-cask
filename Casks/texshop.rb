cask 'texshop' do
  version '3.8.5'
  sha256 'ac68bd5851892477a0530a04fe9494183ff68406b89e6a3e0887311910e7fe13'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.no_dots}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          checkpoint: '556e2e54e5e651a4d39e3385bfb9c4908d80779c8ecdb6266bf57c10709c4cce'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop/'

  depends_on macos: '>= :mountain_lion'

  app 'TeXShop.app'
end
