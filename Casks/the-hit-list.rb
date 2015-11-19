cask :v1 => 'the-hit-list' do
  version '1.1.17'
  sha256 '0a6bd16d26c19a27f2146cdba27fc5c8119da8c382643d285203b41fadaebe98'

  url 'http://distrib.karelia.com/downloads/TheHitList-302.zip'
  appcast 'http://launch.karelia.com/appcast.php?product=9&appname=The+Hit+List'
  name 'The Hit List'
  homepage 'http://www.karelia.com/products/the-hit-list/mac.html'
  license :commercial

  app 'The Hit List.app'
end
