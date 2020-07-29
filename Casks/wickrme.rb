cask 'wickrme' do
  version '5.56.16'
  sha256 'd1b04843a3f72bbb8f1b11fc69d7c10ee0ca08e8ef1578e95f53b72e6aa55a57'

  # s3.amazonaws.com/static.wickr.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/static.wickr.com/downloads/mac/me/WickrMe-#{version}.dmg"
  appcast 'https://pro-download.wickr.com/api/multiVerify/pro/undefined/'
  name 'Wickr Me'
  homepage 'https://wickr.com/products/personal/'

  app 'WickrMe.app'
end
