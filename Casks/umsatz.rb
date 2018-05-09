cask 'umsatz' do
  version '7.1.1'
  sha256 '1b41df0d4ecfddbb6353c60ccb558dbea9ea24c81f13e9adddcac965fab74550'

  # moapp.software was verified as official when first introduced to the cask
  url 'https://download.moapp.software/Umsatz.zip'
  appcast 'https://sparkle.moapp.software/umsatz.xml',
          checkpoint: '3e19b481f808e6af78f9f76dc4348836dcceebd2dcb692e11cdbd524aa5fcd10'
  name 'Umsatz'
  homepage 'https://umsatz-programm.de/'

  app 'Umsatz.app'
end
