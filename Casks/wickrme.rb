cask 'wickrme' do
  version '5.12.6'
  sha256 '6a8b9b185a81a68c687dc0723f6b4a8ad996e1ae25ed7279a329c2412e75f096'

  # s3.amazonaws.com/static.wickr.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/static.wickr.com/downloads/mac/me/WickrMe-#{version}.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/5af5d569264b4cc68e1f5156e8f80fb9'
  name 'Wickr Me'
  homepage 'https://wickr.com/products/personal/'

  app 'WickrMe.app'
end
