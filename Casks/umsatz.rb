cask 'umsatz' do
  version '8.0.9'
  sha256 'bee0ab7201351281f7af21b3763fc7c4bd6b444cb60f1899f399f2bff76b8f73'

  # moapp.software was verified as official when first introduced to the cask
  url 'https://download.moapp.software/Umsatz.zip'
  appcast 'https://sparkle.moapp.software/umsatz.xml'
  name 'Umsatz'
  homepage 'https://umsatz-programm.de/'

  app 'Umsatz.app'
end
