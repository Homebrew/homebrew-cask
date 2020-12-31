cask "tencent-lemon" do
  version "4.8.6"
  sha256 "c26af042e9574faa9bb4d3a631864a43612e471e012ba184f5099b2394da2abf"

  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/Lemon_#{version}.dmg",
      verified: "pm.myapp.com/invc/xfspeed/qqpcmgr/"
  appcast "https://lemon.guanjia.qq.com/latest/package"
  name "Tencent Lemon Cleaner"
  homepage "https://mac.gj.qq.com/"

  app "Tencent Lemon.app"
end
