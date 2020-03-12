cask 'timeular' do
  version '3.0.0'
  sha256 '9ff06a9d0b52b718659105788536cc9965b19b5bb140a631f2fba5d05deec3af'

  # timeular-desktop-packages.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/Timeular-#{version}.dmg"
  appcast 'https://timeular-desktop-packages.s3.amazonaws.com/mac/production/latest-mac.yml'
  name 'Timeular'
  homepage 'https://timeular.com/'

  auto_updates true

  app 'Timeular.app'
end
