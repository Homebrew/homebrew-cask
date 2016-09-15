cask 'ubersicht' do
  version '1.0.43'
  sha256 '8c7d20c7d15aa3c76b48b0154f27bd3bf7d07d686ac4aa481d9ba9360856d7cf'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  appcast 'http://tracesof.net/uebersicht/updates.xml.rss',
          checkpoint: '63503f359d331e0a9e148d24a407ca054190602b7919562766687e248e08094f'
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
