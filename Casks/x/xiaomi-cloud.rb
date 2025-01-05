cask "xiaomi-cloud" do
  version "3.0.1"
  sha256 "c4e59f296c3d1398d8cf89125d99617af2cc2adeac7fcf6232ccc6a93982843b"

  url "https://cdn.cnbj1.fds.api.mi-img.com/archive/update-server/public/darwin/x64/XiaomiCloud-#{version}.dmg",
      verified: "cdn.cnbj1.fds.api.mi-img.com/archive/update-server/public/darwin/x64/"
  name "Xiaomi Cloud"
  name "小米云服务"
  desc "Sync photos, contacts, messages and devices"
  homepage "https://i.mi.com/"

  livecheck do
    url "https://update-server.micloud.xiaomi.net/api/v1/releases"
    strategy :json do |json|
      json.dig("data", "version")
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
