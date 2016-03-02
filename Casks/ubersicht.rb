cask 'ubersicht' do
  version '0.8.35'
  sha256 'b2336618b06372da601d1f10f1b4db369f61bd1aadd0fcc3d349525656a56cb3'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  appcast 'http://tracesof.net/uebersicht/updates.xml.rss',
          checkpoint: '275f6dc25a559f9677b1c81dd8a60825695342f1a5f00aadfe015b91e3e069bf'
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
