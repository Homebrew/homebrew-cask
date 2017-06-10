cask 'ubersicht' do
  version '1.2.46'
  sha256 '4629eb4863673e69599d51f986d469c4a3f13b6b843cb0d065c08f767e3b2eea'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  appcast 'http://tracesof.net/uebersicht/updates.xml.rss',
          checkpoint: '7aefd5941e00dafaaee47492bf2a2cc0f2fdd2871fd73e94d14f4bb7c7fb4ba8'
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
