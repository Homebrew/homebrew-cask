cask 'umsatz' do
  version '7.2.2'
  sha256 'bacbea1aa995cf225a838760de6092575a5ccc09d1da426bf81164d79e36f6ff'

  # moapp.software was verified as official when first introduced to the cask
  url 'https://download.moapp.software/Umsatz.zip'
  appcast 'https://sparkle.moapp.software/umsatz.xml'
  name 'Umsatz'
  homepage 'https://umsatz-programm.de/'

  app 'Umsatz.app'
end
