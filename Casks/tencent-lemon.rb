cask "tencent-lemon" do
  version "4.8.9"
  sha256 "02bc9c96dcb02820c8ff9a5a188c138e9917958075e500b617b4fa1f70925d55"

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
