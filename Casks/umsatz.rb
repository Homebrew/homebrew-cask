cask 'umsatz' do
  version :latest
  sha256 :no_check

  # moapp.software was verified as official when first introduced to the cask
  url 'https://download.moapp.software/Umsatz.zip'
  name 'Umsatz'
  homepage 'https://umsatz-programm.de/'

  app 'Umsatz.app'
end
