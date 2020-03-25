cask 'tencent-lemon' do
  version '4.2.0'
  sha256 '6b338ae7b5e35f5ce8120d4b3d3c91bb3d1d127a61066fab14c0a2f176ba4b2a'

  # pm.myapp.com/invc/xfspeed/qqpcmgr was verified as official when first introduced to the cask
  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/Lemon_#{version}.dmg"
  appcast 'https://lemon.guanjia.qq.com/latest/package'
  name 'Tencent Lemon Cleaner'
  homepage 'https://mac.gj.qq.com/'

  app 'Tencent Lemon.app'
end
