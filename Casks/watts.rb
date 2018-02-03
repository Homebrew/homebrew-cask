cask 'watts' do
  version :latest
  sha256 :no_check

  # matchingbrackets.com/abatt was verified as official when first introduced to the cask
  url 'https://binarytricks.com/watts2/public/Watts.app.tgz'
  name 'Watts'
  homepage 'https://binarytricks.com/'

  app 'Watts.app'
end
