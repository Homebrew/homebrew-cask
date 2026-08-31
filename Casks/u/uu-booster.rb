cask "uu-booster" do
  version "2.8.19"
  sha256 :no_check

  url "https://adl.netease.com/d/g/uu/c/gw?type=mac&direct=1"
  name "UU Booster"
  desc "Network accelerator"
  homepage "https://uu.163.com/download/"

  livecheck do
    url "https://uu.163.com/json/download_info.json"
    strategy :json do |json|
      json.dig("mac", "version")
    end
  end

  auto_updates true
  depends_on :macos

  app "UUBooster.app"

  zap trash: [
    "~/Library/Application Support/com.netease.uumac",
    "~/Library/Caches/com.netease.uumac",
    "~/Library/HTTPStorages/com.netease.uumac",
    "~/Library/WebKit/com.netease.uumac",
  ]
end
