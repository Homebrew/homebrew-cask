cask 'vienna' do
  version '3.1.13'
  sha256 '666a2eb6f74eeddc51e30ff39d8c2c243f46ed29b67db1ee165bc81a8f5b872b'

  # bintray.com/viennarss was verified as official when first introduced to the cask
  url "https://dl.bintray.com/viennarss/vienna-rss/Vienna#{version}.tar.gz"
  appcast 'https://viennarss.github.io/sparkle-files/changelog.xml',
          checkpoint: 'e24635f82ab172d850556e99bfdb5ac77c24c9d544647a83ac3ab2566cd7e492'
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
