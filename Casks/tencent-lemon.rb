cask 'tencent-lemon' do
  version '4.5.0'
  sha256 '947fa22f1339b78153677494563ba92b0559f7f327bce01db6e06f1531ab82ef'

  # pm.myapp.com/invc/xfspeed/qqpcmgr/ was verified as official when first introduced to the cask
  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/Lemon-#{version}.dmg"
  appcast 'https://lemon.guanjia.qq.com/latest/package'
  name 'Tencent Lemon Cleaner'
  homepage 'https://mac.gj.qq.com/'

  app 'Tencent Lemon.app'
end
