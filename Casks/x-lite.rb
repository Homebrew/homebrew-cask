cask 'x-lite' do
  version '5.6.1_99140'
  sha256 'de59e5367222520dcd6482c7f75f2305d49c38a79f933e522e3b74197317ca7a'

  # counterpath.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://counterpath.s3.amazonaws.com/downloads/X-Lite_#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.counterpath.com/XLiteForMac'
  name 'X-Lite'
  homepage 'https://www.counterpath.com/x-lite/'

  app 'X-Lite.app'
end
