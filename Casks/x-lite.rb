cask 'x-lite' do
  version '5.7.0_100772'
  sha256 'ef37feeadd35bd65d54718bfb1859d6cbe885eaa07b38dd820bc5c3c55888957'

  # counterpath.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://counterpath.s3.amazonaws.com/downloads/X-Lite_#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.counterpath.com/XLiteForMac'
  name 'X-Lite'
  homepage 'https://www.counterpath.com/x-lite/'

  app 'X-Lite.app'
end
