cask 'tuxguitar' do
  version '1.3.2'
  sha256 'c66d038813bb58b8a0a69fc57c6834ac62ede8d47bce5e49e469e64bb6cc4706'

  url "https://downloads.sourceforge.net/tuxguitar/tuxguitar-#{version}-macosx-cocoa-64.app.tar.gz"
  appcast 'https://sourceforge.net/projects/tuxguitar/rss?path=/TuxGuitar',
          checkpoint: '671e2f8853920191b1204bc8b14b73caa0dc033a054424787019744f7f1aaa10'
  name 'TuxGuitar'
  homepage 'https://sourceforge.net/projects/tuxguitar/'

  app "tuxguitar-#{version}-macosx-cocoa-64.app"
end
