cask 'the-hit-list' do
  version '1.1.30,358'
  sha256 'fe5489a238adbe026b654b1ac527be6bec2ca25fbc8553ec5d243663292e124a'

  url "https://distrib.karelia.com/downloads/TheHitList-#{version.after_comma}.zip"
  appcast 'https://launch.karelia.com/appcast.php?product=9&appname=The+Hit+List',
          checkpoint: 'acec182e0b21aae87f3f6eb668ed55b732a5dcc2d0adeb1954b2b6449ee1efa1'
  name 'The Hit List'
  homepage 'https://www.karelia.com/products/the-hit-list/mac.html'

  app 'The Hit List.app'
end
