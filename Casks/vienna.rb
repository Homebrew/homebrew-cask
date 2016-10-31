cask 'vienna' do
  version '3.1.6'
  sha256 '606d236d2fba3817af235a5e500a12f97613e597cef5a2c7a46490dbb7ab4786'

  # bintray.com/viennarss was verified as official when first introduced to the cask
  url "https://dl.bintray.com/viennarss/vienna-rss/Vienna#{version}.tar.gz"
  appcast 'https://viennarss.github.io/sparkle-files/changelog.xml',
          checkpoint: '424f8bf0853ffdf035b8faac439c6f6e489717bdc25e66cc60e8f6ff2cfc5c16'
  name 'Vienna'
  homepage 'http://www.vienna-rss.org'

  app 'Vienna.app'

  zap delete: [
                '~/Library/Application Support/Vienna',
                '~/Library/Caches/uk.co.opencommunity.vienna2',
                '~/Library/Preferences/uk.co.opencommunity.vienna2.plist',
              ]
end
