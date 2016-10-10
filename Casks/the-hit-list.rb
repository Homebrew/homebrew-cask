cask 'the-hit-list' do
  version '1.1.26,345'
  sha256 'a3b843d6156456330fce9746064996885b021cd4a876f0e6230c3e0ee5766ff0'

  url "https://distrib.karelia.com/downloads/TheHitList-#{version.after_comma}.zip"
  appcast 'https://launch.karelia.com/appcast.php?product=9&appname=The+Hit+List',
          checkpoint: '484546055de385df594a995cb3738b178f95a28a0da2a00b02c5a81612507b5c'
  name 'The Hit List'
  homepage 'https://www.karelia.com/products/the-hit-list/mac.html'

  app 'The Hit List.app'
end
