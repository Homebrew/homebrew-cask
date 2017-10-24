cask 'transtype-trial' do
  version :latest
  sha256 :no_check

  # fontlab.us was verified as official when first introduced to the cask
  url 'http://www.fontlab.us/downloads/installers/TR4MacFull.dmg'
  name 'TransType'
  homepage 'https://www.fontlab.com/font-converter/transtype/'

  app 'TransType 4.app'
end
