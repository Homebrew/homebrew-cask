cask 'wd-my-cloud' do
  version :latest
  sha256 :no_check

  url 'http://download.wdc.com/nas/WDMyCloud_mac.dmg'
  name 'WD My Cloud'
  homepage 'http://www.wdc.com/'
  license :closed

  pkg 'Install WD My Cloud.pkg'

  uninstall  pkgutil: 'com.wdc.wdMyCloud.*',
             rmdir:   '/Applications/WD My Cloud'
end
