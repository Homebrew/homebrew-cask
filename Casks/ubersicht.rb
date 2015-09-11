cask :v1 => 'ubersicht' do
  version '0.5'
  sha256 '5d3712a3ec8c46c510cbbaaa5299282179b22d224763e5429d9f919d39625d62'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  name 'Übersicht'
  appcast 'http://tracesof.net/uebersicht/updates.xml.rss',
          :sha256 => '2e0f4a180954bd9ce3ff7376ed886ba593c23a143071e30b2544482a75b07df9'
  homepage 'http://tracesof.net/uebersicht'
  license :gpl

  app 'Übersicht.app'
end
