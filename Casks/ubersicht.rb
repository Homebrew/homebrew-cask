cask :v1 => 'ubersicht' do
  version '0.6.20'
  sha256 '50a56f68533f0a7ed5e82bd7cd877c3361c60cc9217689195c24bdc2e77b3f95'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  name 'Übersicht'
  appcast 'http://tracesof.net/uebersicht/updates.xml.rss',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  homepage 'http://tracesof.net/uebersicht'
  license :gpl

  app 'Übersicht.app'
end
