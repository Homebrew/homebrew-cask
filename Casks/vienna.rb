cask 'vienna' do
  version '3.1.10'
  sha256 '0c1ffc32c3631712b94de76ff7642654a615a279cc30b4478697104964512f03'

  # bintray.com/viennarss was verified as official when first introduced to the cask
  url "https://dl.bintray.com/viennarss/vienna-rss/Vienna#{version}.tar.gz"
  appcast 'https://viennarss.github.io/sparkle-files/changelog.xml',
          checkpoint: 'e9e55b01bf0ce272296d25dcbbde5ccee5503b7471835f2d49b78e55cc9783c6'
  name 'Vienna'
  homepage 'http://www.vienna-rss.org/'

  app 'Vienna.app'

  zap delete: [
                '~/Library/Application Support/Vienna',
                '~/Library/Caches/uk.co.opencommunity.vienna2',
                '~/Library/Preferences/uk.co.opencommunity.vienna2.plist',
              ]
end
