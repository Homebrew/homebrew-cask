cask 'tencent-lemon' do
  version '1.0.6'
  sha256 'edc9e91586b97df2fc2fd5f0928fdc41476732ccd7488fc2765f8536142d0c3f'

  # pm.myapp.com/invc/xfspeed/qqpcmgr was verified as official when first introduced to the cask
  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/Lemon_#{version}.dmg"
  name 'Tencent Lemon Cleaner'
  homepage 'https://mac.gj.qq.com/'

  app 'Tencent Lemon.app'
end
