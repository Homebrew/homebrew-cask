cask 'umsatz' do
  version '8.1.1'
  sha256 '83d2e8d7283c9e41f5b31807b73e363d3b56f6949b2e1188a9fdefbe19b56de4'

  # moapp.software was verified as official when first introduced to the cask
  url 'https://download.moapp.software/Umsatz.zip'
  appcast 'https://sparkle.moapp.software/umsatz.xml'
  name 'Umsatz'
  homepage 'https://umsatz-programm.de/'

  app 'Umsatz.app'
end
