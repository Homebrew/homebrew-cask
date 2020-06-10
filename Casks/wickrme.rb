cask 'wickrme' do
  version '5.55.7'
  sha256 '2a606d4af01cb785b1bdc4ad8b52aff13f4ff45fb9ade2fe580368b0c2384daa'

  # s3.amazonaws.com/static.wickr.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/static.wickr.com/downloads/mac/me/WickrMe-#{version}.dmg"
  appcast 'https://pro-download.wickr.com/api/multiVerify/pro/undefined/'
  name 'Wickr Me'
  homepage 'https://wickr.com/products/personal/'

  app 'WickrMe.app'
end
