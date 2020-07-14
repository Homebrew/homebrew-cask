cask 'timeular' do
  version '3.3.0'
  sha256 '197c111e79ae0dd5f6f4a4b9c2f39dce66750a8853ed1dee42d3a6943c1cae01'

  # timeular-desktop-packages.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/Timeular-#{version}.dmg"
  appcast 'https://timeular-desktop-packages.s3.amazonaws.com/mac/production/latest-mac.yml'
  name 'Timeular'
  homepage 'https://timeular.com/'

  auto_updates true

  app 'Timeular.app'
end
