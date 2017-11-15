cask 'ubersicht' do
  version '1.2.53'
  sha256 'e74dfc4d49e035269e44563541eb0b50b5de7c102fe948a09d5b075140ddf29e'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  appcast 'http://tracesof.net/uebersicht/updates.xml.rss',
          checkpoint: '92ca85b82c7b917dfb05c8d9264a3bda800de4874c9df84d34a92d9d5dd3c6c3'
  name 'Übersicht'
  homepage 'http://tracesof.net/uebersicht/'

  app 'Übersicht.app'

  uninstall login_item: 'Übersicht'

  zap delete: [
                '~/Library/Caches/tracesOf.Uebersicht',
                '~/Library/WebKit/tracesOf.Uebersicht',
              ],
      trash:  [
                '~/Library/Application Support/tracesOf.Uebersicht',
                '~/Library/Application Support/Übersicht',
                '~/Library/Preferences/tracesOf.Uebersicht.plist',
              ]
end
