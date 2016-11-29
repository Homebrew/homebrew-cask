cask 'xtrafinder' do
  version '0.25.9'
  sha256 'c01096536843359ace55345c6636f6608668a213f03b76d183cd4182ce027e0a'

  url 'https://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg'
  appcast 'https://www.trankynam.com/xtrafinder/XtraFinder-Appcast.xml',
          checkpoint: '24654fe73bc1b20bac52a55e93a0a27008108b3c2f193d8e1bb5620787a0da88'
  name 'XtraFinder'
  homepage 'https://www.trankynam.com/xtrafinder/'

  pkg 'XtraFinder.pkg'

  uninstall pkgutil: 'com.trankynam.xtrafinder.*'
end
