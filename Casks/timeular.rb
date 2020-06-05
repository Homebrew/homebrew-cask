cask 'timeular' do
  version '3.2.0'
  sha256 '5cbf0ea2c14ad37f044b715f77ca2a408b2faab1a5648cbeaf45d1985d3f77b1'

  # timeular-desktop-packages.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/Timeular-#{version}.dmg"
  appcast 'https://timeular-desktop-packages.s3.amazonaws.com/mac/production/latest-mac.yml'
  name 'Timeular'
  homepage 'https://timeular.com/'

  auto_updates true

  app 'Timeular.app'
end
