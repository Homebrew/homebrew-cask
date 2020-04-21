cask 'timeular' do
  version '3.1.0'
  sha256 '8e9214c1d26ee1d68f46a46eb00698b01d2677affd0beef0258a5a7f1f6f39e8'

  # timeular-desktop-packages.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/Timeular-#{version}.dmg"
  appcast 'https://timeular-desktop-packages.s3.amazonaws.com/mac/production/latest-mac.yml'
  name 'Timeular'
  homepage 'https://timeular.com/'

  auto_updates true

  app 'Timeular.app'
end
