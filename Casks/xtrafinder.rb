class Xtrafinder < Cask
  url 'http://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg'
  homepage 'http://www.trankynam.com/xtrafinder/'
  version 'latest'
  sha256 :no_check
  install 'XtraFinder.pkg'
  uninstall :pkgutil => 'com.trankynam.xtrafinder.*'
end
