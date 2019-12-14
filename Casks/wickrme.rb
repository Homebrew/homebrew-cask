cask 'wickrme' do
  version '5.43.8'
  sha256 'd4664da74f9d0bc1a4e1e82bb44daf1a5ce6343965aa9aec8ecd6bb3062eae6b'

  # s3.amazonaws.com/static.wickr.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/static.wickr.com/downloads/mac/me/WickrMe-#{version}.dmg"
  appcast 'https://pro-download.wickr.com/api/multiVerify/pro/undefined/'
  name 'Wickr Me'
  homepage 'https://wickr.com/products/personal/'

  app 'WickrMe.app'
end
