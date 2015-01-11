cask :v1 => 'ubersicht' do
  version '0.4.15'
  sha256 '419e6b9cd2fc5e064d35134171d8198b5c405945806a5fcb55c02d0a45a8c6e9'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  name 'Übersicht'
  homepage 'http://tracesof.net/uebersicht'
  license :gpl

  app 'Übersicht.app'
end
