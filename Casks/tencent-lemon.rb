cask "tencent-lemon" do
  version "4.8.5"
  sha256 "c9710d05c8d78ad476a725578d0e50fa3eee8f96ddf850a415101acbe39dcc5d"

  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/Lemon_#{version}.dmg",
      verified: "pm.myapp.com/invc/xfspeed/qqpcmgr/"
  appcast "https://lemon.guanjia.qq.com/latest/package"
  name "Tencent Lemon Cleaner"
  homepage "https://mac.gj.qq.com/"

  app "Tencent Lemon.app"
end
