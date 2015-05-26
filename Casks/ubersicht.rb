cask :v1 => 'ubersicht' do
  version '0.5'
  sha256 '5d3712a3ec8c46c510cbbaaa5299282179b22d224763e5429d9f919d39625d62'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  name 'Übersicht'
  homepage 'http://tracesof.net/uebersicht'
  license :gpl

  app 'Übersicht.app'
end
