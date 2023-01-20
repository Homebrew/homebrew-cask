cask "webull" do
  arch arm: "global_arm64", intel: "global_x64"
  livecheck_arch = on_arch_conditional arm: "qt_m1_global", intel: "qt_mac_global"

  version "6.7.1"
  sha256 arm:   "49d4cc07f657bf1f4672624b07900b446815f391f38bf4705f4968b46f2c321f",
         intel: "ff2024fa995949896ffecf482f397c5091c0f83bcd29457a146c96838136d89f"

  url "https://u1sweb.webullfintech.com/us/Webull%20Desktop_#{version}_#{arch}signed.dmg",
      verified: "u1sweb.webullfintech.com/us/"
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
