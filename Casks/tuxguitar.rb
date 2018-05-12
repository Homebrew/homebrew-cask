cask 'tuxguitar' do
  version '1.5.1'
  sha256 '30ed6184f646bbd366d91abfae8fce568250617ddc560bdf819da32dd9f05547'

  url "https://downloads.sourceforge.net/tuxguitar/tuxguitar-#{version}-macosx-cocoa-64.app.tar.gz"
  appcast 'https://sourceforge.net/projects/tuxguitar/rss?path=/TuxGuitar',
          checkpoint: '35b4ada15a96d3f7b7b6d3db6b40ede0c621425df63119f7753aac64092fdc28'
  name 'TuxGuitar'
  homepage 'https://sourceforge.net/projects/tuxguitar/'

  app "tuxguitar-#{version}-macosx-cocoa-64.app"
end
