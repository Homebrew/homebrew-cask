cask 'tencent-lemon' do
  version '1.0.8'
  sha256 '398a85009294a81535f2cdd6025e24d50de69c7550a6eabf528f40e45947b57f'

  # pm.myapp.com/invc/xfspeed/qqpcmgr was verified as official when first introduced to the cask
  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/Lemon_#{version}.dmg"
  name 'Tencent Lemon Cleaner'
  homepage 'https://mac.gj.qq.com/'

  app 'Tencent Lemon.app'
end
