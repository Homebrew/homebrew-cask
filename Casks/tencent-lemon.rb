cask "tencent-lemon" do
  version "4.8.0"
  sha256 "2ee0c2653221018d530237692dfc6893c2fbb1ef44cba1a610a7dccb8123f716"

  # pm.myapp.com/invc/xfspeed/qqpcmgr/ was verified as official when first introduced to the cask
  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/Lemon_#{version}.dmg"
  appcast "https://lemon.guanjia.qq.com/latest/package"
  name "Tencent Lemon Cleaner"
  homepage "https://mac.gj.qq.com/"

  app "Tencent Lemon.app"
end
