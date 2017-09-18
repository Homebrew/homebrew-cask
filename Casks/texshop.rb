cask 'texshop' do
  version '3.87'
  sha256 'fe1164aa9c8a4898b390ea00568b74a42b29ab7e91a2c872198f40d66487619b'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.no_dots}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          checkpoint: '792050c8090854eb117d2abded51517f626e78512d9e9cafe2a3d27aa44f5944'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop/'

  depends_on macos: '>= :mountain_lion'

  app 'TeXShop.app'
end
