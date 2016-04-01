cask 'vienna' do
  version '3.1.2'
  sha256 '7d49b4d7028a88d36fa6bbe12a2c003224b8bb540ca1a9ab8f379877e292660b'

  # bintray.com/viennarss was verified as official when first introduced to the cask
  url "https://dl.bintray.com/viennarss/vienna-rss/Vienna#{version}.tgz"
  appcast 'https://viennarss.github.io/sparkle-files/changelog.xml',
          checkpoint: '91176552bd732fac4c73ebc4aaf2985a71bfc91c7c3b62b60d769f8c102acf9e'
  name 'Vienna'
  homepage 'http://www.vienna-rss.org'
  license :apache

  app 'Vienna.app'

  zap delete: [
                '~/Library/Application Support/Vienna',
                '~/Library/Caches/uk.co.opencommunity.vienna2',
                '~/Library/Preferences/uk.co.opencommunity.vienna2.plist',
              ]
end
