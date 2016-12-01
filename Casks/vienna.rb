cask 'vienna' do
  version '3.1.8'
  sha256 '8916188c2eaeb6107224961f0b7dbe9e458f59e4db27aafb9065988fea9af0aa'

  # bintray.com/viennarss was verified as official when first introduced to the cask
  url "https://dl.bintray.com/viennarss/vienna-rss/Vienna#{version}.tar.gz"
  appcast 'https://viennarss.github.io/sparkle-files/changelog.xml',
          checkpoint: 'e16e5fb62571e6f28b5054a973716b9bfb2e253f319259f1a22156cd42883f72'
  name 'Vienna'
  homepage 'http://www.vienna-rss.org/'

  app 'Vienna.app'

  zap delete: [
                '~/Library/Application Support/Vienna',
                '~/Library/Caches/uk.co.opencommunity.vienna2',
                '~/Library/Preferences/uk.co.opencommunity.vienna2.plist',
              ]
end
