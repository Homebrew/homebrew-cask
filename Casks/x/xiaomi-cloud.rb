cask "xiaomi-cloud" do
  version "2.4.1"
  sha256 "526677b298efad6539cb713f2a70f1fc02f5dd6c976ce915fe8e5546aaaa9644"

  url "https://cdn.cnbj1.fds.api.mi-img.com/archive/update-server/public/darwin/x64/XiaomiCloud-#{version}.dmg",
      verified: "cdn.cnbj1.fds.api.mi-img.com/archive/update-server/public/darwin/x64/"
  name "Xiaomi Cloud"
  name "小米云服务"
  desc "Sync photos, contacts, messages and devices"
  homepage "https://i.mi.com/"

  livecheck do
    url "https://update-server.micloud.xiaomi.net/api/v1/releases"
    strategy :json do |json|
      json["data"]["version"]
    end
  end

  auto_updates true

  app "小米云服务.app"

  zap trash: [
    "~/Library/Application Support/MiCloud",
    "~/Library/Preferences/micloud.pc.xiaomi.helper.plist",
    "~/Library/Preferences/micloud.pc.xiaomi.plist",
  ]
end
