cask 'ubersicht' do
  version '1.2.53'
  sha256 'e74dfc4d49e035269e44563541eb0b50b5de7c102fe948a09d5b075140ddf29e'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  appcast 'http://tracesof.net/uebersicht/updates.xml.rss'
  name 'Übersicht'
  homepage 'http://tracesof.net/uebersicht/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Übersicht.app'

  uninstall login_item: 'Übersicht'

  zap trash: [
               '~/Library/Application Support/Übersicht',
               '~/Library/Application Support/tracesOf.Uebersicht',
               '~/Library/Caches/tracesOf.Uebersicht',
               '~/Library/Preferences/tracesOf.Uebersicht.plist',
               '~/Library/WebKit/tracesOf.Uebersicht',
             ]
end
