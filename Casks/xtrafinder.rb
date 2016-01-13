cask 'xtrafinder' do
  version '0.25.8'
  sha256 'a5efae114fbdf0bf28bdc3340b0c2c8f79bded07dc6730cf612b1d7750779f66'

  url 'https://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg'
  appcast 'https://www.trankynam.com/xtrafinder/XtraFinder-Appcast.xml',
          :checkpoint => '60454c386365510df149c5cbc766eee6401f370143cfe859140ddd6cddf909c6'
  name 'XtraFinder'
  homepage 'https://www.trankynam.com/xtrafinder/'
  license :gratis

  pkg 'XtraFinder.pkg'

  uninstall :pkgutil => 'com.trankynam.xtrafinder.*'
end
