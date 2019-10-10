cask 'timeular' do
  version '2.3.4'
  sha256 'c3b79b57fe82499c362759fd10edf057509505414d74db17d20e29b1b5dd9234'

  # timeular-desktop-packages.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/Timeular-#{version}.dmg"
  appcast 'https://timeular-desktop-packages.s3.amazonaws.com/mac/production/latest-mac.yml'
  name 'Timeular'
  homepage 'https://timeular.com/'

  auto_updates true

  app 'Timeular.app'
end
