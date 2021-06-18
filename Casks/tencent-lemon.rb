cask "tencent-lemon" do
  version "4.8.9"
  sha256 "a33308b1ccc70c40da0bef2745facb72ab2b4211ad4ead200081ccf3b41466fb"

  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/Lemonv#{version}.dmg",
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
