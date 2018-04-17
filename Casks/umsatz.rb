cask 'umsatz' do
  version '7.1'
  sha256 'f6bc4485fa5bb1d3c3b1686cc2e1d9985daa4ade305266ea7f03047594b637c7'

  # moapp.software was verified as official when first introduced to the cask
  url 'https://download.moapp.software/Umsatz.zip'
  appcast 'https://sparkle.moapp.software/umsatz.xml',
          checkpoint: '5bf4f0c7aa53a52a5ce95ec9d8096e2dc7ff8935756a6177f8ca88d14278b130'
  name 'Umsatz'
  homepage 'https://umsatz-programm.de/'

  app 'Umsatz.app'
end
