cask :v1 => 'vienna' do
  version '3.0.2'
  sha256 'a52a8de9591483d4c440ab1390ab7f66bbafee0e27e23517b7300b0df4e461e0'

  url "http://downloads.sourceforge.net/vienna-rss/Vienna#{version}.tgz"
  appcast 'http://vienna-rss.org/changelog.xml',
          :sha256 => 'fcfbae9fe2ccae3bd3531436daa2060c16fab7d72de2a8eea1d13ccbcb66814d'
  homepage 'http://www.vienna-rss.org'
  license :apache

  app 'Vienna.app'

  zap :delete => [
                  '~/Library/Application Support/Vienna',
                  '~/Library/Caches/uk.co.opencommunity.vienna2',
                  '~/Library/Preferences/uk.co.opencommunity.vienna2.plist',
                  ]
end
