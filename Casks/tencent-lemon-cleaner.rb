cask 'tencent-lemon-cleaner' do
  version '1.0.5'
  sha256 '2e57befca7a6c8070f0d66b0766321c18ca2d6e0c928c85514be52e514370322'

  # pm.myapp.com was verified as official when first introduced to the cask
  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/1543925356.0367.Lemon.#{version}.dmg"
  name 'Tencent Lemon Cleaner'
  homepage 'https://mac.gj.qq.com/'

  app 'Tencent Lemon.app'
end
