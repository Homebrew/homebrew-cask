cask 'tuxguitar' do
  version '1.4'
  sha256 'aa012a3122e19375af8dbd194bfdc3c2ee58d44594eab1b79ead9bda639bb6bf'

  url "https://downloads.sourceforge.net/tuxguitar/tuxguitar-#{version}-macosx-cocoa-64.app.tar.gz"
  appcast 'https://sourceforge.net/projects/tuxguitar/rss?path=/TuxGuitar',
          checkpoint: '9176a815c51f9f394cd28af9ce40a63ce5179633c2d9ccab19742a29ddb5c3c7'
  name 'TuxGuitar'
  homepage 'https://sourceforge.net/projects/tuxguitar/'

  app "tuxguitar-#{version}-macosx-cocoa-64.app"
end
