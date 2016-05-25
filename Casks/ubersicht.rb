cask 'ubersicht' do
  version '0.9.39'
  sha256 '198d9a6dd2be3ac8a9bf8d9c8777a11797b96c779c78686c89e0e7afe8308f88'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  appcast 'http://tracesof.net/uebersicht/updates.xml.rss',
          checkpoint: 'af435e0f1c77098416d193fd281ef30ddbebc72cb6f88c5238078df849cd4e63'
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
