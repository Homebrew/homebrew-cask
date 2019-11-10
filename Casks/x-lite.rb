cask 'x-lite' do
  version '5.8.0_101921'
  sha256 '34f3986467553bb10f93da626f9f474fa46a4564fd9f492eac44a2a3e71b3f18'

  # counterpath.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://counterpath.s3.amazonaws.com/downloads/X-Lite_#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.counterpath.com/XLiteForMac'
  name 'X-Lite'
  homepage 'https://www.counterpath.com/x-lite/'

  app 'X-Lite.app'
end
