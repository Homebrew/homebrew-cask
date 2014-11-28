cask :v1 => 'xtrafinder' do
  version :latest
  sha256 :no_check

  url 'http://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg'
  homepage 'http://www.trankynam.com/xtrafinder/'
  license :unknown

  pkg 'XtraFinder.pkg'

  uninstall :pkgutil => 'com.trankynam.xtrafinder.*'
end
