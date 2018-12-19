cask 'umsatz' do
  version '8.0.8'
  sha256 '7c62e46788fa98a19ee84697b84882502a7fa14c48359f88c2fab00188947033'

  # moapp.software was verified as official when first introduced to the cask
  url 'https://download.moapp.software/Umsatz.zip'
  appcast 'https://sparkle.moapp.software/umsatz.xml'
  name 'Umsatz'
  homepage 'https://umsatz-programm.de/'

  app 'Umsatz.app'
end
