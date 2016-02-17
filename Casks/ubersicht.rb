cask 'ubersicht' do
  version '0.7.25'
  sha256 '9a4b3d59128bbb808bb965e374c7d0cf3c0e2e41d1244adaba9bc6d4739e1436'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  appcast 'http://tracesof.net/uebersicht/updates.xml.rss',
          checkpoint: 'c6eeb79d234075580a4b0baba48f12458526f980a07f9425536658481abc64fe'
  name 'Übersicht'
  homepage 'http://tracesof.net/uebersicht'
  license :gpl

  app 'Übersicht.app'
end
