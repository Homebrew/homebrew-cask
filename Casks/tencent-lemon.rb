cask 'tencent-lemon' do
  version '4.3.0'
  sha256 'ddf703f3426aa7cac360944cf4a638e7b1ed23a07951c0888c00f16470f6a38c'

  # pm.myapp.com/invc/xfspeed/qqpcmgr/ was verified as official when first introduced to the cask
  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/Lemon_#{version}.dmg"
  appcast 'https://lemon.guanjia.qq.com/latest/package'
  name 'Tencent Lemon Cleaner'
  homepage 'https://mac.gj.qq.com/'

  app 'Tencent Lemon.app'
end
