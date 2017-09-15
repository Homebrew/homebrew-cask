cask 'the-hit-list' do
  version '1.1.29,355'
  sha256 'd4846927351bf7b48c10a4af740bf129bd4245a34be8189e709c83ba011e4e46'

  url "https://distrib.karelia.com/downloads/TheHitList-#{version.after_comma}.zip"
  appcast 'https://launch.karelia.com/appcast.php?product=9&appname=The+Hit+List',
          checkpoint: '5c4d0a25485671d8023dc58a9fb77d30f3f993697f5cb3c49f2fd85bbdd92768'
  name 'The Hit List'
  homepage 'https://www.karelia.com/products/the-hit-list/mac.html'

  app 'The Hit List.app'
end
