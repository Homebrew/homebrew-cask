cask 'ubersicht' do
  version '1.4.59'
  sha256 '98aadcbc9ceb4367ee43cda8ef1371084f919a9b2ec2f21a963031bcc841d6d4'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  appcast 'http://tracesof.net/uebersicht/updates.xml.rss'
  name 'Übersicht'
  homepage 'http://tracesof.net/uebersicht/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Übersicht.app'

  zap trash: [
               '~/Library/Application Support/Übersicht',
               '~/Library/Application Support/tracesOf.Uebersicht',
               '~/Library/Caches/tracesOf.Uebersicht',
               '~/Library/Preferences/tracesOf.Uebersicht.plist',
               '~/Library/WebKit/tracesOf.Uebersicht',
             ]
end
