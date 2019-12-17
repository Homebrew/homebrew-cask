cask 'tuxguitar' do
  version '1.5.3'
  sha256 '806f16487fa6f8329db53698d588662fcb208fc4e8fdf4c7d04e2d724e7b9870'

  url "https://downloads.sourceforge.net/tuxguitar/tuxguitar-#{version}-macosx-cocoa-64.app.tar.gz"
  appcast 'https://sourceforge.net/projects/tuxguitar/rss?path=/TuxGuitar'
  name 'TuxGuitar'
  homepage 'https://sourceforge.net/projects/tuxguitar/'

  app "tuxguitar-#{version}-macosx-cocoa-64.app"
end
