cask 'roaringapps' do
  version '1.4.0'
  sha256 'c6ac49054952c43311f9b786d3d0deaa2d757823ac74abf5e6753b61313d914a'

  # s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/s3.roaringapps.com/downloads/RoaringApps-#{version}.zip"
  name 'RoaringApps'
  homepage 'https://roaringapps.com/mac-app'

  app 'RoaringApps.app'

  zap trash: [
               '~/Library/Application Support/RoaringApps',
               '~/Library/Caches/com.brycecameron.RoaringApps',
               '~/Library/Cookies/com.brycecameron.RoaringApps.binarycookies',
               '~/Library/Preferences/com.brycecameron.RoaringApps.plist',
             ]
end
