cask 'umsatz' do
  version '8.2.6'
  sha256 'f04a35494c9c786ee0caa3a1584de01dc608da2a6a29cdf9f85937fe8a897f79'

  # moapp.software was verified as official when first introduced to the cask
  url 'https://download.moapp.software/Umsatz.zip'
  appcast 'https://sparkle.moapp.software/umsatz.xml'
  name 'Umsatz'
  homepage 'https://umsatz-programm.de/'

  app 'Umsatz.app'
end
