cask :v1 => 'ubersicht' do
  version '0.7'
  sha256 '3ac9cb5b8e488029a50f216ff39f370f75b71a27d46c5d5b0a7df49732f3d334'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  name 'Übersicht'
  appcast 'http://tracesof.net/uebersicht/updates.xml.rss',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  homepage 'http://tracesof.net/uebersicht'
  license :gpl

  app 'Übersicht.app'
end
