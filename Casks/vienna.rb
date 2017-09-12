cask 'vienna' do
  version '3.1.14'
  sha256 '2d0a95621ff6442c34597c859ca2551880ac4cc9cc880fd9db70f7cbe135f8ba'

  # bintray.com/viennarss was verified as official when first introduced to the cask
  url "https://dl.bintray.com/viennarss/vienna-rss/Vienna#{version}.tar.gz"
  appcast 'https://viennarss.github.io/sparkle-files/changelog.xml',
          checkpoint: '3708b1530e4511e4f8539ac77e2dc3c2c07dc9bfd4d3927592008c71801f1617'
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
