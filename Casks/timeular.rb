cask 'timeular' do
  version '2.3.1'
  sha256 'e1c07868b397d1997853058aaecc6b5369b3c49cb33f03eaa06eb7104794093b'

  # timeular-desktop-packages.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/Timeular-#{version}.dmg"
  appcast 'https://timeular-desktop-packages.s3.amazonaws.com/mac/production/latest-mac.yml'
  name 'Timeular'
  homepage 'https://timeular.com/'

  auto_updates true

  app 'Timeular.app'
end
