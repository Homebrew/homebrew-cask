cask "tencent-lemon" do
  version "4.8.7"
  sha256 "2e2a4bd583fb13c3f20d00395f832035336fecbcf3d2d1f96503e48baca1039a"

  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/Lemon_#{version}.dmg",
      verified: "pm.myapp.com/invc/xfspeed/qqpcmgr/"
  appcast "https://lemon.guanjia.qq.com/latest/package"
  name "Tencent Lemon Cleaner"
  homepage "https://mac.gj.qq.com/"

  app "Tencent Lemon.app"

  uninstall delete: [
    "/Library/Logs/Lemon",
    "/Library/Preferences/LemonDaemon_packet.dat",
    "/private/var/folders/ht/cbrdb7ln52x64ck8kbxzgdw80000gn/C/com.tencent.Lemon",
    "/private/var/folders/ht/cbrdb7ln52x64ck8kbxzgdw80000gn/C/com.tencent.LemonMonitor",
    "/private/var/run/com.tencent.Lemon.socket",
  ]

  zap trash: [
    "~/Library/Caches/com.tencent.Lemon",
    "~/Library/Caches/com.tencent.LemonMonitor",
    "~/Library/Logs/LemonMonitor.log",
    "~/Library/Logs/Tencent Lemon.log",
    "~/Library/Preferences/com.tencent.LemonUpdate.plist",
    "~/Library/Preferences/LemonMonitor_packet.dat",
    "~/Library/Preferences/Tencent Lemon_packet.dat",
  ]
end
