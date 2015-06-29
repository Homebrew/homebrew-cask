cask :v1 => 'xtrafinder' do
  version :latest
  sha256 :no_check

  url 'https://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg'
  name 'XtraFinder'
  homepage 'https://www.trankynam.com/xtrafinder/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'XtraFinder.pkg'

  uninstall :pkgutil => 'com.trankynam.xtrafinder.*'
end
