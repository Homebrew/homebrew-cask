cask 'umsatz' do
  version '8.2.8'
  sha256 '9711812ed98a4b624140db2b16254bad170389723b95eb815cf70db502ce1ae9'

  # moapp.software was verified as official when first introduced to the cask
  url 'https://download.moapp.software/Umsatz.zip'
  appcast 'https://sparkle.moapp.software/umsatz.xml'
  name 'Umsatz'
  homepage 'https://umsatz-programm.de/'

  app 'Umsatz.app'
end
