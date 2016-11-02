cask 'vienna' do
  version '3.1.7'
  sha256 '7ff4d26defa4b06329d52ed36b8db9c419568120a2ce2bc74d109bdcd864b0a4'

  # bintray.com/viennarss was verified as official when first introduced to the cask
  url "https://dl.bintray.com/viennarss/vienna-rss/Vienna#{version}.tar.gz"
  appcast 'https://viennarss.github.io/sparkle-files/changelog.xml',
          checkpoint: 'b68c799c1d6bbbcede8a11e5a2140421568c841d3cccb9c13e25e19dc4fc7d90'
  name 'Vienna'
  homepage 'http://www.vienna-rss.org'

  app 'Vienna.app'

  zap delete: [
                '~/Library/Application Support/Vienna',
                '~/Library/Caches/uk.co.opencommunity.vienna2',
                '~/Library/Preferences/uk.co.opencommunity.vienna2.plist',
              ]
end
