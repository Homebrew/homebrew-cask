cask 'umsatz' do
  version '8.1.2'
  sha256 '120657b35f0eb0afabe69bdd3588f73f7eb5377bbc8961b2b9252374f6908298'

  # moapp.software was verified as official when first introduced to the cask
  url 'https://download.moapp.software/Umsatz.zip'
  appcast 'https://sparkle.moapp.software/umsatz.xml'
  name 'Umsatz'
  homepage 'https://umsatz-programm.de/'

  app 'Umsatz.app'
end
