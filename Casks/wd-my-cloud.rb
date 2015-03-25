cask :v1 => 'wd-my-cloud' do
  version '1.0.7.4'
  sha256 'f0aef2aa1791bc6af9c4fb21d0b55dbeda39474449bc3770068e010fa73daebd'

  url 'http://download.wdc.com/nas/WDMyCloud_mac.dmg'
  name 'WD My Cloud'
  homepage 'http://www.wdc.com/'
  license :closed

  pkg 'Install WD My Cloud.pkg'
  uninstall  :pkgutil => 'com.wdc.wdMyCloud.*', :rmdir => '/Applications/WD My Cloud'

end
