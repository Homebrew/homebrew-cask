cask :v1 => 'ubersicht' do
  version '0.6'
  sha256 '9bb27f6b752f046a1d77d7ba979b2fbcb45553e7bbf269a71e369547b08f6eb6'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  name 'Übersicht'
  appcast 'http://tracesof.net/uebersicht/updates.xml.rss',
          :sha256 => '2e0f4a180954bd9ce3ff7376ed886ba593c23a143071e30b2544482a75b07df9'
  homepage 'http://tracesof.net/uebersicht'
  license :gpl

  app 'Übersicht.app'
end
