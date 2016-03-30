cask 'vienna' do
  version '3.1.1'
  sha256 'cd9fdc292bcb0835a0fe59e2d60cd5ca5bf7872c1db2efe22debe47ca89db8e4'

  # bintray.com/viennarss was verified as official when first introduced to the cask
  url "https://dl.bintray.com/viennarss/vienna-rss/Vienna#{version}.tgz"
  appcast 'https://viennarss.github.io/sparkle-files/changelog.xml',
          checkpoint: 'c66a07d4b752aae756bd1343fb506baf1c08da4b1ac1f2e7d06e1c0f922b6d70'
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
