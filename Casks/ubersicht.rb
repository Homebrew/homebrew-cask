cask 'ubersicht' do
  version '1.3.55'
  sha256 'bc1f7627ff07af5f1d7b0678322e122eeace261e039ca8448b1dad7298c80669'

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
