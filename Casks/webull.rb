cask "webull" do
  arch arm: "global_arm64", intel: "global_x64"
  livecheck_arch = on_arch_conditional arm: "qt_m1_global", intel: "qt_mac_global"

  version "6.6.5"
  sha256 arm:   "5507e50f0f35801ee48e9f8c1a63185c49c4c6bfb87a27a0f569ebddde71db3b",
         intel: "8502d6ec16ccccbcd53358701fb3724f2081e43d64e40a8461328847f325824a"

  url "https://u1sweb.webullfintech.com/us/desktop/Webull%20Desktop_#{version}_#{arch}signed.dmg",
      verified: "u1sweb.webullfintech.com/us/desktop/"
  name "Webull"
  desc "Desktop client for Webull Financial LLC"
  homepage "https://webull.com/"

  livecheck do
    url "https://infoapi.webullfintech.com/api/operation/appver/last?platform=#{livecheck_arch}&osv=10.15"
    strategy :page_match
    regex(/Webull%20Desktop[._-](\d+(?:\.\d+)+).*?.dmg/i)
  end

  depends_on macos: ">= :mojave"

  app "Webull Desktop.app"

  zap trash: "~/Library/Application Support/Webull Desktop"
end
