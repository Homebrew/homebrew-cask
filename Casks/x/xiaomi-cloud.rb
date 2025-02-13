cask "xiaomi-cloud" do
  arch arm: "arm64", intel: "x64"

  version "3.0.2"
  sha256 arm:   "805dba3c4713d77e32b464b463a6277898b5af2db9f92ad3673ad89ac6ade339",
         intel: "ff4b2b1d620e335d9d7a2f747d2e3147bc565465ec602e4c234c93fc45e39d20"

  url "https://cdn.cnbj1.fds.api.mi-img.com/archive/update-server/public/darwin/#{arch}/XiaomiCloud-#{version}.dmg",
      verified: "cdn.cnbj1.fds.api.mi-img.com/archive/update-server/public/darwin/"
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
end
