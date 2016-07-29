cask 'xtrafinder' do
  version '0.25.8'
  sha256 'a5efae114fbdf0bf28bdc3340b0c2c8f79bded07dc6730cf612b1d7750779f66'

  url 'https://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg'
  appcast 'https://www.trankynam.com/xtrafinder/XtraFinder-Appcast.xml',
          checkpoint: 'fc88e2af722c86ec1d6649427470d711fffa2a814cdd8f27bc59fae62d430cb3'
  name 'XtraFinder'
  homepage 'https://www.trankynam.com/xtrafinder/'
  license :gratis

  pkg 'XtraFinder.pkg'

  uninstall pkgutil: 'com.trankynam.xtrafinder.*'
end
