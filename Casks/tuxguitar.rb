cask 'tuxguitar' do
  version '1.4'
  sha256 '0fe8b1c1fe8c1460b98f2e1b123de5ae44e8af01d4d6b87b9d0035792fe61954'

  url "https://downloads.sourceforge.net/tuxguitar/tuxguitar-#{version}-macosx-cocoa-64.app.tar.gz"
  appcast 'https://sourceforge.net/projects/tuxguitar/rss?path=/TuxGuitar',
          checkpoint: '98d0dbf7e6f6fbaa9d01190ad597f081a4124b0862836f022aabc3508442a23c'
  name 'TuxGuitar'
  homepage 'https://sourceforge.net/projects/tuxguitar/'

  app "tuxguitar-#{version}-macosx-cocoa-64.app"
end
