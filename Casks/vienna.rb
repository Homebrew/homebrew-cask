cask 'vienna' do
  version '3.1.11'
  sha256 '3c1d425c2499c5ad4acc231829c05c004cfeb64b9e2c598ac31baa53370d1be3'

  # bintray.com/viennarss was verified as official when first introduced to the cask
  url "https://dl.bintray.com/viennarss/vienna-rss/Vienna#{version}.tar.gz"
  appcast 'https://viennarss.github.io/sparkle-files/changelog.xml',
          checkpoint: '4f5b48c2237f8935566e6f40048e7f557aec30e28ef509074cd6efb71e7eb0b9'
  name 'Vienna'
  homepage 'http://www.vienna-rss.com/'

  app 'Vienna.app'

  zap delete: [
                '~/Library/Application Support/Vienna',
                '~/Library/Caches/uk.co.opencommunity.vienna2',
                '~/Library/Cookies/uk.co.opencommunity.vienna2.binarycookies',
                '~/Library/Preferences/uk.co.opencommunity.vienna2.plist',
                '~/Library/Saved Application State/uk.co.opencommunity.vienna2.savedState',
              ]
end
