cask 'tuxguitar' do
  version '1.4'
  sha256 '0fe8b1c1fe8c1460b98f2e1b123de5ae44e8af01d4d6b87b9d0035792fe61954'

  url "https://downloads.sourceforge.net/tuxguitar/tuxguitar-#{version}-macosx-cocoa-64.app.tar.gz"
  appcast 'https://sourceforge.net/projects/tuxguitar/rss?path=/TuxGuitar',
          checkpoint: '9176a815c51f9f394cd28af9ce40a63ce5179633c2d9ccab19742a29ddb5c3c7'
  name 'TuxGuitar'
  homepage 'https://sourceforge.net/projects/tuxguitar/'

  app "tuxguitar-#{version}-macosx-cocoa-64.app"
end
