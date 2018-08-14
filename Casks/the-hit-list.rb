cask 'the-hit-list' do
  version '1.1.31,363'
  sha256 'e1313860db752b2be1f17dad267417eac569e4ed3bc54d32c7545ea086772443'

  url "https://distrib.karelia.com/downloads/TheHitList-#{version.after_comma}.zip"
  appcast 'https://launch.karelia.com/appcast.php?product=9&appname=The+Hit+List'
  name 'The Hit List'
  homepage 'https://www.karelia.com/products/the-hit-list/mac.html'

  app 'The Hit List.app'
end
