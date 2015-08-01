cask :v1 => 'vienna' do
  version '3.0.6'
  sha256 '9bc9e93a443dc03234949e7baa648a94d43c9e8b86fcba426d8e677eaa7e3e12'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/vienna-rss/Vienna#{version}.tgz"
  appcast 'http://vienna-rss.org/changelog.xml',
          :sha256 => 'a8fa8150ae0a2f591e443b1fe50ad605243e2b6b76b2eeb08b019a79076b6ee4'
  name 'Vienna'
  homepage 'http://www.vienna-rss.org'
  license :apache

  app 'Vienna.app'

  zap :delete => [
                  '~/Library/Application Support/Vienna',
                  '~/Library/Caches/uk.co.opencommunity.vienna2',
                  '~/Library/Preferences/uk.co.opencommunity.vienna2.plist',
                  ]
end
