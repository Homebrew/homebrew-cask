cask 'wickrme' do
  version '4.64.8'
  sha256 'ab6fcdefac88630183784af03035c37dd67b3638f7031a16cffbf7a6b293eabe'

  # s3.amazonaws.com/static.wickr.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/static.wickr.com/downloads/mac/me/WickrMe-#{version}.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/5af5d569264b4cc68e1f5156e8f80fb9'
  name 'Wickr Me'
  homepage 'https://wickr.com/products/personal/'

  app 'WickrMe.app'
end
