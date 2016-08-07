cask 'the-hit-list' do
  version '1.1.25,339'
  sha256 '4fd622f27700ad5fad591fa6d8d3a5f4ecd9a190d0f20e2466f6640bdca73ac9'

  url "https://distrib.karelia.com/downloads/TheHitList-#{version.after_comma}.zip"
  appcast 'https://launch.karelia.com/appcast.php?product=9&appname=The+Hit+List',
          checkpoint: '304ba77de025071738623905825ea8f0e4a07221a2449a9672daa38e660cadb1'
  name 'The Hit List'
  homepage 'https://www.karelia.com/products/the-hit-list/mac.html'
  license :commercial

  app 'The Hit List.app'
end
