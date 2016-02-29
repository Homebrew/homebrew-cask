cask 'the-hit-list' do
  version '1.1.19,308'
  sha256 'cc244128df45759cb1306448405cbcd0c0b153292cecda4326230881546eab94'

  url "https://distrib.karelia.com/downloads/TheHitList-#{version.after_comma}.zip"
  appcast 'https://launch.karelia.com/appcast.php?product=9&appname=The+Hit+List',
          checkpoint: 'be5b5715989ad59d9173ac571be72ff4b575696268fcb430aad5da99a3c0f022'
  name 'The Hit List'
  homepage 'https://www.karelia.com/products/the-hit-list/mac.html'
  license :commercial

  app 'The Hit List.app'
end
