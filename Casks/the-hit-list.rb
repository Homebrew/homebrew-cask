cask 'the-hit-list' do
  version '1.1.17'
  sha256 '0a6bd16d26c19a27f2146cdba27fc5c8119da8c382643d285203b41fadaebe98'

  url 'http://distrib.karelia.com/downloads/TheHitList-302.zip'
  appcast 'https://launch.karelia.com/appcast.php?product=9&appname=The+Hit+List',
          :checkpoint => '4951e077c8cec0d8605a42f581f1245385acd27bb1660a726b50a40050fd2877'
  name 'The Hit List'
  homepage 'https://www.karelia.com/products/the-hit-list/mac.html'
  license :commercial

  app 'The Hit List.app'
end
