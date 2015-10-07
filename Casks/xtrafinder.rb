cask :v1 => 'xtrafinder' do
  version :latest
  sha256 :no_check

  url 'https://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg'
  appcast 'https://www.trankynam.com/xtrafinder/XtraFinder-Appcast.xml',
          :sha256 => '8fa692bc68bba10e313a0289a3054b65c70fe984f2cd3a335e7ff02619a0f135'
  name 'XtraFinder'
  homepage 'https://www.trankynam.com/xtrafinder/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'XtraFinder.pkg'

  uninstall :pkgutil => 'com.trankynam.xtrafinder.*'
end
