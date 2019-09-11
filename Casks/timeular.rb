cask 'timeular' do
  version :latest
  sha256 :no_check

  # timeular-desktop-packages.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://timeular-desktop-packages.s3.amazonaws.com/mac/production/Timeular.dmg'
  name 'Timeular'
  homepage 'https://timeular.com/'

  app 'Timeular.app'
end
