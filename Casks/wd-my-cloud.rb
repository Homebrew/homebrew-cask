cask 'wd-my-cloud' do
  version :latest
  sha256 :no_check

  url 'http://download.wdc.com/nas/WDMyCloud_mac.dmg'
  name 'WD My Cloud'
  homepage 'https://www.wdc.com/'

  pkg 'Install WD My Cloud.pkg'

  uninstall  pkgutil: 'com.wdc.wdMyCloud.*',
             delete:  '~/Desktop/WD My Cloud.app'
end
