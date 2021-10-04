cask "tencent-lemon" do
  version "5.0.0"
  sha256 "41647524e321bef4a59f87030cd5098a3d1d828cfa4321a32a90d334313091fd"

  url "https://webcdn.m.qq.com/lemon/version/Lemon#{version}.dmg"
  name "Tencent Lemon Cleaner"
  desc "Cleanup and system status tool"
  homepage "https://lemon.qq.com/"

  livecheck do
    url "https://lemon.guanjia.qq.com/latest/package"
    strategy :page_match
    regex(/"latest":{"version":"(\d+(?:\.\d+)*)"/i)
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
