cask 'tencent-lemon' do
  version '1.1.0'
  sha256 '676756d2b02d369779f6a283615b98d2c2accc438c17818b07bda0c70688b83c'

  # pm.myapp.com/invc/xfspeed/qqpcmgr was verified as official when first introduced to the cask
  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/Lemon_#{version}.dmg"
  name 'Tencent Lemon Cleaner'
  homepage 'https://mac.gj.qq.com/'

  app 'Tencent Lemon.app'
end
