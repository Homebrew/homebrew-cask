cask 'tencent-lemon' do
  version '3.3.1_1'
  sha256 '70ff5866428dc4ef76ec2e4a715b0c7ccef18808f583f1b550e38f0c03d3c6d3'

  # pm.myapp.com/invc/xfspeed/qqpcmgr was verified as official when first introduced to the cask
  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/Lemon_#{version}.dmg"
  appcast 'https://lemon.guanjia.qq.com/latest/package'
  name 'Tencent Lemon Cleaner'
  homepage 'https://mac.gj.qq.com/'

  app 'Tencent Lemon.app'
end
