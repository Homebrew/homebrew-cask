cask 'wickrme' do
  version '5.49.6'
  sha256 '9dc2028b2412e1e1f23987e4656e43737723ebae34c48cd47a2082ff0799e3b2'

  # s3.amazonaws.com/static.wickr.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/static.wickr.com/downloads/mac/me/WickrMe-#{version}.dmg"
  appcast 'https://pro-download.wickr.com/api/multiVerify/pro/undefined/'
  name 'Wickr Me'
  homepage 'https://wickr.com/products/personal/'

  app 'WickrMe.app'
end
