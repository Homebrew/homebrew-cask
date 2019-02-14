cask 'wickrme' do
  version '5.2.4'
  sha256 '79ba4b6b1cd093647c152884725c3c513ebc314fd8e56e3756d18e6f3d44980b'

  # s3.amazonaws.com/static.wickr.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/static.wickr.com/downloads/mac/me/WickrMe-#{version}.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/5af5d569264b4cc68e1f5156e8f80fb9'
  name 'Wickr Me'
  homepage 'https://wickr.com/products/personal/'

  app 'WickrMe.app'
end
