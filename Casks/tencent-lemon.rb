cask 'tencent-lemon' do
  version '1.2.2.1'
  sha256 '4edd5263fb9dd18adae9e78dd98a486ab3a041d14cdcf1f43ee8cfaee2ef6d37'

  # pm.myapp.com/invc/xfspeed/qqpcmgr was verified as official when first introduced to the cask
  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/Lemon_#{version}.dmg"
  appcast 'https://lemon.guanjia.qq.com/latest/package'
  name 'Tencent Lemon Cleaner'
  homepage 'https://mac.gj.qq.com/'

  app 'Tencent Lemon.app'
end
