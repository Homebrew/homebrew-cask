cask 'tuxguitar' do
  version '1.5'
  sha256 'ba9101f87c89a36bc4983b61e7f372b04253867884605413576b13bd8cfb4768'

  url "https://downloads.sourceforge.net/tuxguitar/tuxguitar-#{version}-macosx-cocoa-64.app.tar.gz"
  appcast 'https://sourceforge.net/projects/tuxguitar/rss?path=/TuxGuitar',
          checkpoint: '19da02f9bdb4d121b9110a32a4403f84ae19c5492dba34061da51267f8709417'
  name 'TuxGuitar'
  homepage 'https://sourceforge.net/projects/tuxguitar/'

  app "tuxguitar-#{version}-macosx-cocoa-64.app"
end
