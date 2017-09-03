cask 'xtrafinder' do
  version '0.27'
  sha256 'dd34c5eeb5b5330ab341ebe9beeb033911239d316f7ced30be0009dd1dd1ec3e'

  url 'https://www.trankynam.com/xtrafinder/downloads/XtraFinder.dmg'
  appcast 'https://www.trankynam.com/xtrafinder/XtraFinder-Appcast.xml',
          checkpoint: '77a57b3ebebcf7904d92edd6ec7c1ddbb8e092c4d8d9c7365b57bf6cbe85c06c'
  name 'XtraFinder'
  homepage 'https://www.trankynam.com/xtrafinder/'

  pkg 'XtraFinder.pkg'

  uninstall pkgutil: 'com.trankynam.xtrafinder.*'
end
