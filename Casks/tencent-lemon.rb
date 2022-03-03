cask "tencent-lemon" do
  version "5.0.5"
  sha256 "938392c780a91bb2f3aaec7ca3063d852cfd2bb4b2743b7c2eca1457975182c6"

  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/Lemon#{version}.dmg",
      verified: "pm.myapp.com/invc/xfspeed/qqpcmgr/"
  name "Tencent Lemon Cleaner"
  desc "Cleanup and system status tool"
  homepage "https://lemon.qq.com/"

  livecheck do
    url "https://lemon.guanjia.qq.com/latest/package"
    regex(/"downloadUrl":"https.*Lemonv?(\d+(?:[._]\d+)+)\.dmg/i)
  end

  app "Tencent Lemon.app"

  uninstall delete: [
    "/Library/Logs/Lemon",
    "/Library/Preferences/LemonDaemon_packet.dat",
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
