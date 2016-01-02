cask 'ubersicht' do
  version '0.7'
  sha256 '3ac9cb5b8e488029a50f216ff39f370f75b71a27d46c5d5b0a7df49732f3d334'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  name 'Übersicht'
  appcast 'http://tracesof.net/uebersicht/updates.xml.rss',
          :sha256 => 'e6901656bbb25e9f6f026798f6a118256a15b43599ef0c30089a53699473685e'
  homepage 'http://tracesof.net/uebersicht'
  license :gpl

  app 'Übersicht.app'
end
