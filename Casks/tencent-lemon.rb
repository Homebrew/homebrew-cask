cask "tencent-lemon" do
  version "4.8.1"
  sha256 "06cf973276bdc7e9a5414b1831c12e655c739dcb911d303ae6724b13691bb3e8"

  # pm.myapp.com/invc/xfspeed/qqpcmgr/ was verified as official when first introduced to the cask
  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/Lemon_#{version}.dmg"
  appcast "https://lemon.guanjia.qq.com/latest/package"
  name "Tencent Lemon Cleaner"
  homepage "https://mac.gj.qq.com/"

  app "Tencent Lemon.app"
end
