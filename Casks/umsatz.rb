cask 'umsatz' do
  version '8.2.4'
  sha256 'b76d892c2afdc2832c855da93eb47a9c7977bda32f3e871dab15d04419f09096'

  # moapp.software was verified as official when first introduced to the cask
  url 'https://download.moapp.software/Umsatz.zip'
  appcast 'https://sparkle.moapp.software/umsatz.xml'
  name 'Umsatz'
  homepage 'https://umsatz-programm.de/'

  app 'Umsatz.app'
end
