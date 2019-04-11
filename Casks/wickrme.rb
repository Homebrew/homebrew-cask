cask 'wickrme' do
  version '5.10.10'
  sha256 'e51a85175ecc3c6c3f2f658cdf6dbcfd247781636e6371f450b2a23dd0e2f983'

  # s3.amazonaws.com/static.wickr.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/static.wickr.com/downloads/mac/me/WickrMe-#{version}.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/5af5d569264b4cc68e1f5156e8f80fb9'
  name 'Wickr Me'
  homepage 'https://wickr.com/products/personal/'

  app 'WickrMe.app'
end
