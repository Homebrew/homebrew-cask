cask 'ubersicht' do
  version '1.0.44'
  sha256 '616a0b6ca847a932e6315a830687343cec506a521dac74316b9c6b0751a0264d'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  appcast 'http://tracesof.net/uebersicht/updates.xml.rss',
          checkpoint: '156f6db16deb26544c11f1df36bbb4a53a61132f130f9c02ee8d9ce5cd6fb8a8'
  name 'Übersicht'
  homepage 'http://tracesof.net/uebersicht'

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
