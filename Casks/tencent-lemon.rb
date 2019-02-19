cask 'tencent-lemon' do
  version '1.0.9'
  sha256 '6f828d37c5af4d7327f2d3ee441525c47c39e142d3c3ad8fb83b8c77fb007910'

  # pm.myapp.com/invc/xfspeed/qqpcmgr was verified as official when first introduced to the cask
  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/Lemon_#{version}.dmg"
  name 'Tencent Lemon Cleaner'
  homepage 'https://mac.gj.qq.com/'

  app 'Tencent Lemon.app'
end
