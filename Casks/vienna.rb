cask 'vienna' do
  version '3.1.3'
  sha256 '0b8ccb5558723114a098ccb671f7b45fb46036087f8b2e35db53ca0f600dfa8f'

  # bintray.com/viennarss was verified as official when first introduced to the cask
  url "https://dl.bintray.com/viennarss/vienna-rss/Vienna#{version}.tgz"
  appcast 'https://viennarss.github.io/sparkle-files/changelog.xml',
          checkpoint: 'c3147541606a86b8e156b6435b97343d72b0ff68fd1e20bc0e5f9e5d3024411a'
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
