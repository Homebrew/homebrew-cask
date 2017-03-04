cask 'watts' do
  version :latest
  sha256 :no_check

  # matchingbrackets.com/abatt was verified as official when first introduced to the cask
  url 'http://www.matchingbrackets.com/abatt/customer/Watts-48.dmg'
  name 'Watts'
  homepage 'https://binarytricks.com/'

  app 'Watts.app'
end
