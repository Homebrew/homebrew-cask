cask "tencent-lemon" do
  version "5.0.3"
  sha256 "1b5bafcfacb58f1a1ed381ce1c0b7fc7b8dc52ab17b73168d21a1ccacb37fd5f"

  url "https://pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/Lemon_#{version}.dmg",
      verified: "pm.myapp.com/invc/xfspeed/qqpcmgr/module_update/"
  name "Tencent Lemon Cleaner"
  desc "Cleanup and system status tool"
  homepage "https://lemon.qq.com/"

  livecheck do
    url "https://lemon.guanjia.qq.com/latest/package"
    strategy :page_match
    regex(/"latest":{"version":"(\d+(?:\.\d+)+)"/i)
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
