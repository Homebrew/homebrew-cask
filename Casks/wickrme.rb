cask 'wickrme' do
  version '5.46.5'
  sha256 '06eeb47c8e3a9427e7acf3e36a64e8abba98f69e0f7903998839be60e2bca20b'

  # s3.amazonaws.com/static.wickr.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/static.wickr.com/downloads/mac/me/WickrMe-#{version}.dmg"
  appcast 'https://pro-download.wickr.com/api/multiVerify/pro/undefined/'
  name 'Wickr Me'
  homepage 'https://wickr.com/products/personal/'

  app 'WickrMe.app'
end
