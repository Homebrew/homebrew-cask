class Xtrafinder < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg'
  homepage 'http://www.trankynam.com/xtrafinder/'

  pkg 'XtraFinder.pkg'
  uninstall :pkgutil => 'com.trankynam.xtrafinder.*'
end
