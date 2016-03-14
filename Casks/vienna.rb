cask 'vienna' do
  version '3.1.0'
  sha256 '1145e19699a5eef297af617b1a8bcbe635e823e535804ac815a26c6b73e8e40e'

  # bintray.com/viennarss was verified as official when first introduced to the cask
  url "https://dl.bintray.com/viennarss/vienna-rss/Vienna#{version}.tgz"
  appcast 'https://viennarss.github.io/sparkle-files/changelog.xml',
          checkpoint: '74e925e4bf67bda2dee55db93a47f3b0b35e2444272f06c131d52ef855d329ef'
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
