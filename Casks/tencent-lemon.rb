cask 'tencent-lemon' do
  version '2.0.0'
  sha256 '8cecb122ea509ca9ba7a1c71c240f91e66487bec5dbb1ac56d26744c9153cb94'

  # pm.myapp.com/invc/xfspeed/qqpcmgr was verified as official when first introduced to the cask
  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/Lemon_#{version}.dmg"
  appcast 'https://lemon.guanjia.qq.com/latest/package'
  name 'Tencent Lemon Cleaner'
  homepage 'https://mac.gj.qq.com/'

  app 'Tencent Lemon.app'
end
