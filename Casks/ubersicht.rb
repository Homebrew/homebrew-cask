cask 'ubersicht' do
  version '1.1.45'
  sha256 'ff2b6b61ef290a966a20cc96073a76f8914fed825b764b4a4258ba7449d16ab8'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  appcast 'http://tracesof.net/uebersicht/updates.xml.rss',
          checkpoint: 'ad937ed65050a40cccc8c7e9079a63f75a9b154357f15226acaf189d03f9e924'
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
