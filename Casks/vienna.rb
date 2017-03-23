cask 'vienna' do
  version '3.1.9'
  sha256 '4b0bb5b1ad4574c540fd1104f04d5a3d83ccb03d2c95cd354b272758e7d1c2a0'

  # bintray.com/viennarss was verified as official when first introduced to the cask
  url "https://dl.bintray.com/viennarss/vienna-rss/Vienna#{version}.tar.gz"
  appcast 'https://viennarss.github.io/sparkle-files/changelog.xml',
          checkpoint: '0ba8a2208a3f5797f63ed0f6e3225aa9af6276ce57efbd182364d8f7c29a709d'
  name 'Vienna'
  homepage 'http://www.vienna-rss.org/'

  app 'Vienna.app'

  zap delete: [
                '~/Library/Application Support/Vienna',
                '~/Library/Caches/uk.co.opencommunity.vienna2',
                '~/Library/Preferences/uk.co.opencommunity.vienna2.plist',
              ]
end
