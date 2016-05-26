cask 'ubersicht' do
  version '0.9.40'
  sha256 '71d633399e3817e4d1e005378249e6bed29392b72f587af9734c70e9b0a8084a'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  appcast 'http://tracesof.net/uebersicht/updates.xml.rss',
          checkpoint: '6089429ff1a97110824b60443b27e15e2b1bed339810795180bfb787c1a3a75b'
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
