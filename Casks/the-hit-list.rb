cask 'the-hit-list' do
  version '1.1.31,363'
  sha256 'e1313860db752b2be1f17dad267417eac569e4ed3bc54d32c7545ea086772443'

  url "https://distrib.karelia.com/downloads/TheHitList-#{version.after_comma}.zip"
  appcast 'https://launch.karelia.com/appcast.php?product=9&appname=The+Hit+List',
          checkpoint: '74a931f715728367315e70304fb3d27d8a3f32b0ea23c57ddfb24de4d7cd419b'
  name 'The Hit List'
  homepage 'https://www.karelia.com/products/the-hit-list/mac.html'

  app 'The Hit List.app'
end
