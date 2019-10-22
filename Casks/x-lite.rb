cask 'x-lite' do
  version '5.7.1_100933'
  sha256 '92f032b34605023e5739d4e8fe2db6b78b5232e5a1e4decd75ebdbdd637c343b'

  # counterpath.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://counterpath.s3.amazonaws.com/downloads/X-Lite_#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.counterpath.com/XLiteForMac'
  name 'X-Lite'
  homepage 'https://www.counterpath.com/x-lite/'

  app 'X-Lite.app'
end
