cask "xiaomi-cloud" do
  version "2.6.1"
  sha256 "7d4f9944eb6e1dd040f82b266f9c1f6b848e33859e517220029ce6177d9e486c"

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
