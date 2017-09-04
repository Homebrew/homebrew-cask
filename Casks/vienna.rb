cask 'vienna' do
  version '3.1.12'
  sha256 '094a28b1f4a7f62d5073ace41bc0281d46d8e2214f8db5efe33601f49d19a405'

  # bintray.com/viennarss was verified as official when first introduced to the cask
  url "https://dl.bintray.com/viennarss/vienna-rss/Vienna#{version}.tar.gz"
  appcast 'https://viennarss.github.io/sparkle-files/changelog.xml',
          checkpoint: '24c69d084e38f3e71f09fa2eea536cf9452d3702a67eb011b565bfb779ba2c9b'
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
