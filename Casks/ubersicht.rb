cask 'ubersicht' do
  version '1.2.48'
  sha256 'c16f40978f89ed593e27bfc8c5b6912ffea1ef02bc08a79a4ccb234c00080512'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  appcast 'http://tracesof.net/uebersicht/updates.xml.rss',
          checkpoint: '63d38503521d1c1fe1a7dd8505e7e64383293d161cbf624da41b7adecd8266e0'
  name 'Übersicht'
  homepage 'http://tracesof.net/uebersicht/'

  app 'Übersicht.app'

  uninstall login_item: 'Übersicht'

  zap delete: [
                '~/Library/Application Support/tracesOf.Uebersicht',
                '~/Library/Application Support/Übersicht',
                '~/Library/Caches/tracesOf.Uebersicht',
                '~/Library/Preferences/tracesOf.Uebersicht.plist',
                '~/Library/WebKit/tracesOf.Uebersicht',
              ]
end
