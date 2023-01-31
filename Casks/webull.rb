cask "webull" do
  arch arm: "global_arm64", intel: "global_x64"
  livecheck_arch = on_arch_conditional arm: "qt_m1_global", intel: "qt_mac_global"

  version "6.8.0"
  sha256 arm:   "41219d312b3d71c634e87dcac0acb768159fcc9fd820bbdff8bd15921cf40c95",
         intel: "30d405f4282b0981064f685dfaa38bb8cc8990771b0c8d9d024709f4824e116c"

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
