cask 'ubersicht' do
  version '0.8.30'
  sha256 '0035186cfc51800bed052bb9b32b8856975234da8532eff47295f6a925a09b14'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  appcast 'http://tracesof.net/uebersicht/updates.xml.rss',
          checkpoint: '8fac67d7368d3933edaa642e65d527da5fed750cda2c26d50ee2ceaeccad9dbe'
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
