cask :v1 => 'ubersicht' do
  version '0.3.13'
  sha256 'a5cf3d806392fcb275c4d6709799ddf8de5c19ef6ab1dfb0d5aeac150eed59d4'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  homepage 'http://tracesof.net/uebersicht'
  license :gpl

  app 'Übersicht.app'
end
