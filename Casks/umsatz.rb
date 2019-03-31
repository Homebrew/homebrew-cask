cask 'umsatz' do
  version '8.2'
  sha256 '0078e9ce1ecb7e2f448a89ce44e9627327f309336aa83153882232abdca2eb1a'

  # moapp.software was verified as official when first introduced to the cask
  url 'https://download.moapp.software/Umsatz.zip'
  appcast 'https://sparkle.moapp.software/umsatz.xml'
  name 'Umsatz'
  homepage 'https://umsatz-programm.de/'

  app 'Umsatz.app'
end
