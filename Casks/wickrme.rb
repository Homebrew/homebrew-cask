cask 'wickrme' do
  version '5.41.14'
  sha256 '4fae5e120b77129421be90ee8767a990ed6a0b97a4395c60450d49585984a7cd'

  # s3.amazonaws.com/static.wickr.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/static.wickr.com/downloads/mac/me/WickrMe-#{version}.dmg"
  appcast 'https://pro-download.wickr.com/api/multiVerify/pro/undefined/'
  name 'Wickr Me'
  homepage 'https://wickr.com/products/personal/'

  app 'WickrMe.app'
end
