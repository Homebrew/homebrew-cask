cask "tencent-lemon" do
  version "4.8.4"
  sha256 "a9aa2dd64edd129ea8a4df1b60bc08ccfbbf47120b09d6d1c4987a0e0c19f5c6"

  # pm.myapp.com/invc/xfspeed/qqpcmgr/ was verified as official when first introduced to the cask
  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/Lemon_#{version}.dmg"
  appcast "https://lemon.guanjia.qq.com/latest/package"
  name "Tencent Lemon Cleaner"
  homepage "https://mac.gj.qq.com/"

  app "Tencent Lemon.app"
end
