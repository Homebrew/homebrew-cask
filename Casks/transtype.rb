cask 'transtype' do
  version '4'
  sha256 :no_check # required as upstream package is updated in-place

  # fontlab.us was verified as official when first introduced to the cask
  url "http://www.fontlab.us/downloads/installers/TR#{version}MacFull.dmg"
  name 'TransType'
  homepage 'https://www.fontlab.com/font-converter/transtype/'

  app "TransType #{version}.app"
end
