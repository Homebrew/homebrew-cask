cask 'tuxguitar' do
  version '1.5.3'
  sha256 '3a25eb11df03904ae5c3bcb21e458c90ec4964cb46f0b1556457ec08800ea1d6'

  url "https://downloads.sourceforge.net/tuxguitar/tuxguitar-#{version}-macosx-cocoa-64.app.tar.gz"
  appcast 'https://sourceforge.net/projects/tuxguitar/rss?path=/TuxGuitar'
  name 'TuxGuitar'
  homepage 'https://sourceforge.net/projects/tuxguitar/'

  app "tuxguitar-#{version}-macosx-cocoa-64.app"
end
