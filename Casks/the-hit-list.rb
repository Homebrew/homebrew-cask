cask 'the-hit-list' do
  version '1.1.19,308'
  sha256 'cc244128df45759cb1306448405cbcd0c0b153292cecda4326230881546eab94'

  url "https://distrib.karelia.com/downloads/TheHitList-#{version.after_comma}.zip"
  appcast 'https://launch.karelia.com/appcast.php?product=9&appname=The+Hit+List',
          checkpoint: '727a25533a0a315b6f77e6b1f7f1a3692d5914712ff6eb04727f086460c8e25b'
  name 'The Hit List'
  homepage 'https://www.karelia.com/products/the-hit-list/mac.html'
  license :commercial

  app 'The Hit List.app'
end
