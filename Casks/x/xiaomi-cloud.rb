cask "xiaomi-cloud" do
  version "2.6.2"
  sha256 "c39fc8b50e8a581e7c6fe7168651a50f6728aff82eb6bb3a997b9d5dd13b8085"

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

  caveats do
    requires_rosetta
  end
end
