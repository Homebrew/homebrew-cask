cask 'the-hit-list' do
  version '1.1.18'
  sha256 '0a6bd16d26c19a27f2146cdba27fc5c8119da8c382643d285203b41fadaebe98'

  url 'http://distrib.karelia.com/downloads/TheHitList-302.zip'
  appcast 'https://launch.karelia.com/appcast.php?product=9&appname=The+Hit+List',
          checkpoint: 'da38593755bd60050bad73870078261448ee736bc9df89519f63a0e6b6b49023'
  name 'The Hit List'
  homepage 'https://www.karelia.com/products/the-hit-list/mac.html'
  license :commercial

  app 'The Hit List.app'
end
