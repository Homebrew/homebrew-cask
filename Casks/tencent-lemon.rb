cask 'tencent-lemon' do
  version '1.1.1'
  sha256 '5bf4bcc15fa5e3e6477f7a69e27cb33cad65ee55f3d0fba9c9acd4992459ab8b'

  # pm.myapp.com/invc/xfspeed/qqpcmgr was verified as official when first introduced to the cask
  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/Lemon_#{version}.dmg"
  name 'Tencent Lemon Cleaner'
  homepage 'https://mac.gj.qq.com/'

  app 'Tencent Lemon.app'
end
