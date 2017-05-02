cask 'zekr' do
  version '1.1.0'
  sha256 '95c1fc030f250e29ab7227170d8a670d269810f2281ccd3def6ba81604672518'

  # downloads.sourceforge.net/zekr was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/zekr/zekr-#{version}-mac_64.tgz"
  name 'Zekr'
  homepage 'http://zekr.org/'

  depends_on cask: 'java'

  app 'Zekr.app'
end
