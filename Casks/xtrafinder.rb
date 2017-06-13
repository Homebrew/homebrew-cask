cask 'xtrafinder' do
  version '0.26'
  sha256 '09714b41e29496465986f776b6a6b7e401258656c8eb0ec1c04928f582d0b2f7'

  url 'https://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg'
  appcast 'https://www.trankynam.com/xtrafinder/XtraFinder-Appcast.xml',
          checkpoint: '77a57b3ebebcf7904d92edd6ec7c1ddbb8e092c4d8d9c7365b57bf6cbe85c06c'
  name 'XtraFinder'
  homepage 'https://www.trankynam.com/xtrafinder/'

  pkg 'XtraFinder.pkg'

  uninstall pkgutil: 'com.trankynam.xtrafinder.*'
end
