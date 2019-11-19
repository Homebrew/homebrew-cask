cask 'timeular' do
  version '2.3.5'
  sha256 '49a9d71d8739042ffaaa5aa1c6ef3f1523786f225f2658b1883b909fba6aa77b'

  # timeular-desktop-packages.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/Timeular-#{version}.dmg"
  appcast 'https://timeular-desktop-packages.s3.amazonaws.com/mac/production/latest-mac.yml'
  name 'Timeular'
  homepage 'https://timeular.com/'

  auto_updates true

  app 'Timeular.app'
end
