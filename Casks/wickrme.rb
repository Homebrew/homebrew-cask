cask 'wickrme' do
  version '4.51.7'
  sha256 'c8ec59d91c068e3f16a131cd98d657b12dca219cdabebf48f997c5d71603508b'

  # s3.amazonaws.com/static.wickr.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/static.wickr.com/downloads/mac/me/WickrMe-#{version}.dmg"
  appcast 'https://me-download.wickr.com/#/version/me'
  name 'Wickr Me'
  homepage 'https://wickr.com/products/personal/'

  app 'WickrMe.app'
end
