cask 'tencent-lemon' do
  version '1.1.3'
  sha256 'b2aa08a46f4541bcea6dbc444ed5a3e1d6a80a5dcccb23ea45314ef5e95dcfc1'

  # pm.myapp.com/invc/xfspeed/qqpcmgr was verified as official when first introduced to the cask
  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/Lemon_#{version}.dmg"
  appcast 'https://lemon.guanjia.qq.com/latest/package'
  name 'Tencent Lemon Cleaner'
  homepage 'https://mac.gj.qq.com/'

  app 'Tencent Lemon.app'
end
