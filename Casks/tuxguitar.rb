cask 'tuxguitar' do
  version '1.5.2'
  sha256 '0a08bacd93a1d3d685d79e7af490c63db0b95bb508e84deaca24f64853996e7c'

  url "https://downloads.sourceforge.net/tuxguitar/tuxguitar-#{version}-macosx-cocoa-64.app.tar.gz"
  appcast 'https://sourceforge.net/projects/tuxguitar/rss?path=/TuxGuitar'
  name 'TuxGuitar'
  homepage 'https://sourceforge.net/projects/tuxguitar/'

  app "tuxguitar-#{version}-macosx-cocoa-64.app"
end
