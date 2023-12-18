cask "xiaomi-cloud" do
  version "2.5.4"
  sha256 "1ee39b6ed718839761ae4170d7332be9d322305cee4cb9dc74925702ac85ef9f"

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
