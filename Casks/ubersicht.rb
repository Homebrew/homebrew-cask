class Ubersicht < Cask
  version '0.2.7'
  sha256 '84a104490c06806205a30008472df92a983855f2bf8fba55ad4312d53518a362'

  url "http://tracesof.net/uebersicht/releases/Uebersicht-#{version}.app.zip"
  homepage 'http://tracesof.net/uebersicht'
  license :unknown

  app 'Übersicht.app'
end
