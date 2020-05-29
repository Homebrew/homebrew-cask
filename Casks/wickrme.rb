cask 'wickrme' do
  version '5.55.6'
  sha256 '991f66db46bc223a30e23a3df0435b33487c48676a784e5f633abb33947152cd'

  # s3.amazonaws.com/static.wickr.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/static.wickr.com/downloads/mac/me/WickrMe-#{version}.dmg"
  appcast 'https://pro-download.wickr.com/api/multiVerify/pro/undefined/'
  name 'Wickr Me'
  homepage 'https://wickr.com/products/personal/'

  app 'WickrMe.app'
end
