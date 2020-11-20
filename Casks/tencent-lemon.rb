cask "tencent-lemon" do
  version "4.8.3"
  sha256 "b74ed2179d06a8dc562e3219453f030df984fb6ab9f8e11c8d660d2fa3553456"

  # pm.myapp.com/invc/xfspeed/qqpcmgr/ was verified as official when first introduced to the cask
  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/Lemon_#{version}.dmg"
  appcast "https://lemon.guanjia.qq.com/latest/package"
  name "Tencent Lemon Cleaner"
  homepage "https://mac.gj.qq.com/"

  app "Tencent Lemon.app"
end
