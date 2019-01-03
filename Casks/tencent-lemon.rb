cask 'tencent-lemon' do
  version '1.0.7_80'
  sha256 '32b261389fbdbc6b1cd8dc7e901b96ec521ffcc2fd2f8ac56ad2c6aa68621ade'

  # pm.myapp.com/invc/xfspeed/qqpcmgr was verified as official when first introduced to the cask
  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/Lemon#{version}.dmg"
  name 'Tencent Lemon Cleaner'
  homepage 'https://mac.gj.qq.com/'

  app 'Tencent Lemon.app'
end
