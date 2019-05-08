cask 'x-lite' do
  version '5.6.0_98892'
  sha256 '9a02712bc98c3e9c50564f45a22c4b1efdba0cea35763ff61d5c484a8f13f14c'

  # counterpath.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://counterpath.s3.amazonaws.com/downloads/X-Lite_#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.counterpath.com/XLiteForMac'
  name 'X-Lite'
  homepage 'https://www.counterpath.com/x-lite/'

  app 'X-Lite.app'
end
