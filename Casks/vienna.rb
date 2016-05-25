cask 'vienna' do
  version '3.1.4'
  sha256 '34ae1d6537c71a029cf4546e6a9ecd502a4ea5930a045cd4da879a985fdd8e54'

  # bintray.com/viennarss was verified as official when first introduced to the cask
  url "https://dl.bintray.com/viennarss/vienna-rss/Vienna#{version}.tar.gz"
  appcast 'https://viennarss.github.io/sparkle-files/changelog.xml',
          checkpoint: 'bc0bf87b0736700bc0d85a69e17d972ab4b9f625a0f4c345d779c8b56fb9f12b'
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
