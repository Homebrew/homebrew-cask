cask "webull" do
  arch arm: "global_arm64", intel: "global_x64"
  livecheck_arch = on_arch_conditional arm: "qt_m1_global", intel: "qt_mac_global"

  version "6.7.0"
  sha256 arm:   "b8567d85786353c11f7c3f8f4d86cf66099d314d358fac83dc4e54730f3f724f",
         intel: "6f3b527bf7c43745aad0027e672708401a01f84ff39dc45b03b7294cabe1863c"

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
