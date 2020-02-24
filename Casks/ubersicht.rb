cask 'ubersicht' do
  version '1.4.61'
  sha256 '0e5090b99d48eb6c4b3dbcea67c32018079285015996ff2bb4cc68d383b7d019'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  appcast 'http://tracesof.net/uebersicht/updates.xml.rss'
  name 'Übersicht'
  homepage 'http://tracesof.net/uebersicht/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Übersicht.app'

  zap trash: [
               '~/Library/Application Support/Übersicht',
               '~/Library/Application Support/tracesOf.Uebersicht',
               '~/Library/Caches/tracesOf.Uebersicht',
               '~/Library/Preferences/tracesOf.Uebersicht.plist',
               '~/Library/WebKit/tracesOf.Uebersicht',
             ]
end
