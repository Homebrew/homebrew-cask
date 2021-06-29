cask "tencent-lemon" do
  version "4.9.0"
  sha256 "a177616e789de16bd00438ad2d037ae628f1f5522d5eec8ffb82a0618b90d86d"

  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/Lemon_V#{version}.dmg",
      verified: "pm.myapp.com/invc/xfspeed/qqpcmgr/"
  name "Tencent Lemon Cleaner"
  desc "Cleanup and system status tool"
  homepage "https://lemon.qq.com/"

  livecheck do
    url "https://lemon.guanjia.qq.com/latest/package"
    strategy :page_match
    regex(/Lemonv?(\d+(?:\.\d+)*)\.dmg/i)
  end

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
