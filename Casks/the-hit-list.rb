cask 'the-hit-list' do
  version '1.1.32,367'
  sha256 'd64787b451782b99581345926c84bf8c838da3a8a493b62b347c6986e3986e40'

  url "https://distrib.karelia.com/downloads/TheHitList-#{version.after_comma}.zip"
  appcast 'https://launch.karelia.com/appcast.php?product=9&appname=The+Hit+List'
  name 'The Hit List'
  homepage 'https://www.karelia.com/products/the-hit-list/mac.html'

  app 'The Hit List.app'
end
