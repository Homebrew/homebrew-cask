cask 'ubersicht' do
  version '0.7'
  sha256 '3ac9cb5b8e488029a50f216ff39f370f75b71a27d46c5d5b0a7df49732f3d334'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  appcast 'http://tracesof.net/uebersicht/updates.xml.rss',
          :checkpoint => '07ec6b517d4be5bd4cb83cb0e4cd7b486feddcc4720254077bce026df34ef0b6'
  name 'Übersicht'
  homepage 'http://tracesof.net/uebersicht'
  license :gpl

  app 'Übersicht.app'
end
