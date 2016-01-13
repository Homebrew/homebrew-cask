cask 'ubersicht' do
  version '0.7'
  sha256 '3ac9cb5b8e488029a50f216ff39f370f75b71a27d46c5d5b0a7df49732f3d334'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  appcast 'http://tracesof.net/uebersicht/updates.xml.rss',
          :checkpoint => 'ab8839f324434167f344f7d64df6cedd0e2891e87e8b324cedf45245a713abde'
  name 'Übersicht'
  homepage 'http://tracesof.net/uebersicht'
  license :gpl

  app 'Übersicht.app'
end
