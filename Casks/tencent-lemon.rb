cask "tencent-lemon" do
  version "4.8.2"
  sha256 "67d9104ebc2aa57a9cabf81d89fb6784d0d8dca23fdb1e26bf423cafc714dd11"

  # pm.myapp.com/invc/xfspeed/qqpcmgr/ was verified as official when first introduced to the cask
  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/Lemon_#{version}.dmg"
  appcast "https://lemon.guanjia.qq.com/latest/package"
  name "Tencent Lemon Cleaner"
  homepage "https://mac.gj.qq.com/"

  app "Tencent Lemon.app"
end
