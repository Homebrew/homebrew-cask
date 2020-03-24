cask 'timeular' do
  version '3.0.1'
  sha256 '8383e90a507c0ffc6d740ea82972ecdc35bdda7b51fb8f16daad84e8a2c6046d'

  # timeular-desktop-packages.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/Timeular-#{version}.dmg"
  appcast 'https://timeular-desktop-packages.s3.amazonaws.com/mac/production/latest-mac.yml'
  name 'Timeular'
  homepage 'https://timeular.com/'

  auto_updates true

  app 'Timeular.app'
end
