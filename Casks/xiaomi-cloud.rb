cask "xiaomi-cloud" do
  version "2.4.0"
  sha256 "1ab13ae04a3e2190842a0498c7df1e6b97b0e3b969c1d937c920dda7d4a963bc"

  url "https://cdn.cnbj1.fds.api.mi-img.com/archive/update-server/public/darwin/x64/XiaomiCloud-#{version}.dmg", verified: "cdn.cnbj1.fds.api.mi-img.com/archive/"
  name "xiaomi-cloud"
  name "小米云服务"
  desc "Sync photos, contacts, messages and devices"
  homepage "https://i.mi.com/"

  livecheck do
    url "https://update-server.micloud.xiaomi.net/api/v1/releases"
    regex(/^-?(\d+(?:\.\d+)+)$/i)
    strategy :json do |json, regex|
      match = json["data"]["version"]&.match(regex)
      next if match.blank?

      match[1]
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
