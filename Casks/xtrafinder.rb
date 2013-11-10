class Xtrafinder < Cask
  url 'http://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg'
  homepage 'http://www.trankynam.com/xtrafinder/'
  version 'latest'
  no_checksum
  install 'XtraFinder.pkg'
  uninstall :pkgutil => 'com.trankynam.xtrafinder.*'
end
