cask 'xtrafinder' do
  version '0.25.9'
  sha256 'c01096536843359ace55345c6636f6608668a213f03b76d183cd4182ce027e0a'

  url 'https://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg'
  appcast 'https://www.trankynam.com/xtrafinder/XtraFinder-Appcast.xml',
          checkpoint: '7645737d49a4e697f4e1361d89d12d513bf2c0f6edefc91131ae3330b910ea3e'
  name 'XtraFinder'
  homepage 'https://www.trankynam.com/xtrafinder/'

  pkg 'XtraFinder.pkg'

  uninstall pkgutil: 'com.trankynam.xtrafinder.*'
end
