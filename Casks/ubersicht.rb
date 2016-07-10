cask 'ubersicht' do
  version '1.0.42'
  sha256 '31baf65820b4245b96958f1cf517f98174bae353814d0b9c6656653b54bc4c6d'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  appcast 'http://tracesof.net/uebersicht/updates.xml.rss',
          checkpoint: 'b1a6b808a92601bb7d13ecf7dd679b504b17ed9e644fcba4aff7f285b07dfb66'
  name 'Übersicht'
  homepage 'http://tracesof.net/uebersicht'
  license :gpl

  app 'Übersicht.app'

  uninstall login_item: 'Übersicht'

  zap delete: [
                '~/Library/Application Support/tracesOf.Uebersicht',
                '~/Library/Application Support/Übersicht',
                '~/Library/Caches/tracesOf.Uebersicht',
                '~/Library/Preferences/tracesOf.Uebersicht.plist',
              ]
end
