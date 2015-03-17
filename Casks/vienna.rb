cask :v1 => 'vienna' do
  version '3.0.4'
  sha256 'd66a2d2f4109c8c7a882c4c7f90c01196f4d89a849742b9ed5363a1077060fa3'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/vienna-rss/Vienna#{version}.tgz"
  appcast 'http://vienna-rss.org/changelog.xml',
          :sha256 => '713e3a705ec2910fa45cab395df5d6780bf41c4b1bd0ea87bfb17b150ede2c82'
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
