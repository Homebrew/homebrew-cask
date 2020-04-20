cask 'wickrme' do
  version '5.52.9'
  sha256 '3b71dd0f38d047980281ea452649f4983759187881e1500d195dd3d9dcac4e9b'

  # s3.amazonaws.com/static.wickr.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/static.wickr.com/downloads/mac/me/WickrMe-#{version}.dmg"
  appcast 'https://pro-download.wickr.com/api/multiVerify/pro/undefined/'
  name 'Wickr Me'
  homepage 'https://wickr.com/products/personal/'

  app 'WickrMe.app'
end
