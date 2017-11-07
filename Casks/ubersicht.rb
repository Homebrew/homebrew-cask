cask 'ubersicht' do
  version '1.2.51'
  sha256 'b33cf71bd0f93bbf14039ae98c9043eb80b336ef0cd577c493cba392a896037c'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  appcast 'http://tracesof.net/uebersicht/updates.xml.rss',
          checkpoint: '5500b00939607ba08d6a806c9204a457c6d721911b380c45e0ef045fb40640cf'
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
