cask :v1 => 'xtrafinder' do
  version :latest
  sha256 :no_check

  url 'https://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg'
  appcast 'https://www.trankynam.com/xtrafinder/XtraFinder-Appcast.xml',
          :sha256 => 'f1246aa1bf1285d96d00d3210f6746b1d3b6183f96d221e5714754654aaa2cdb'
  name 'XtraFinder'
  homepage 'https://www.trankynam.com/xtrafinder/'
  license :gratis

  pkg 'XtraFinder.pkg'

  uninstall :pkgutil => 'com.trankynam.xtrafinder.*'
end
