cask 'xtrafinder' do
  version '0.25.8'
  sha256 'a5efae114fbdf0bf28bdc3340b0c2c8f79bded07dc6730cf612b1d7750779f66'

  url 'https://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg'
  appcast 'https://www.trankynam.com/xtrafinder/XtraFinder-Appcast.xml',
          :sha256 => '51012c5a6b09281cd39041879b0b60ae3db5b8ca6afb266bbe90663e7557e3a1'
  name 'XtraFinder'
  homepage 'https://www.trankynam.com/xtrafinder/'
  license :gratis

  pkg 'XtraFinder.pkg'

  uninstall :pkgutil => 'com.trankynam.xtrafinder.*'
end
