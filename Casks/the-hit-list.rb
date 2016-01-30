cask 'the-hit-list' do
  version '1.1.18'
  sha256 'f469d990599b785cb1dd816d1ff2ee473974334c30ab362d7d55756c3363763b'

  url 'http://distrib.karelia.com/downloads/TheHitList-306.zip'
  appcast 'https://launch.karelia.com/appcast.php?product=9&appname=The+Hit+List',
          checkpoint: 'da38593755bd60050bad73870078261448ee736bc9df89519f63a0e6b6b49023'
  name 'The Hit List'
  homepage 'https://www.karelia.com/products/the-hit-list/mac.html'
  license :commercial

  app 'The Hit List.app'
end
