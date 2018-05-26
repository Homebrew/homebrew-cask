cask 'umsatz' do
  version '7.2.1'
  sha256 '357b447525d78a4b15da6d76b2376bf20cc3b0f216be1c041283112e8b247476'

  # moapp.software was verified as official when first introduced to the cask
  url 'https://download.moapp.software/Umsatz.zip'
  appcast 'https://sparkle.moapp.software/umsatz.xml',
          checkpoint: '2accc2924ed429dfefdcfe0fddc29c7b0f4da7cfc01adc2b17eab9433b809b74'
  name 'Umsatz'
  homepage 'https://umsatz-programm.de/'

  app 'Umsatz.app'
end
