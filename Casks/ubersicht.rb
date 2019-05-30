cask 'ubersicht' do
  version '1.4.58'
  sha256 '4acca8cfb6d8cd16d104ec2565c87ac5da32e7128b5ebcf363742d2f1ba3c122'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  appcast 'http://tracesof.net/uebersicht/updates.xml.rss'
  name 'Übersicht'
  homepage 'http://tracesof.net/uebersicht/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Übersicht.app'

  uninstall login_item: 'Übersicht'

  zap trash: [
               '~/Library/Application Support/Übersicht',
               '~/Library/Application Support/tracesOf.Uebersicht',
               '~/Library/Caches/tracesOf.Uebersicht',
               '~/Library/Preferences/tracesOf.Uebersicht.plist',
               '~/Library/WebKit/tracesOf.Uebersicht',
             ]
end
