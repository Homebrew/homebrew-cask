cask 'umsatz' do
  version '8.1.4'
  sha256 '0dc293391a59efeb14ec067956bf2b088110e0df63019e4e81ba37d90cfb4dfe'

  # moapp.software was verified as official when first introduced to the cask
  url 'https://download.moapp.software/Umsatz.zip'
  appcast 'https://sparkle.moapp.software/umsatz.xml'
  name 'Umsatz'
  homepage 'https://umsatz-programm.de/'

  app 'Umsatz.app'
end
