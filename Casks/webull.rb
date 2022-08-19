cask "webull" do
  arch arm: "global_arm64", intel: "global_x64"
  livecheck_arch = on_arch_conditional arm: "qt_m1_global", intel: "qt_mac_global"

  version "6.2.5"

  on_intel do
    sha256 "5a6296a6c6e2f40f6d104ee3ef66dc3ae1f86ac59a76188d5dcfa13cebff3c12"
  end
  on_arm do
    sha256 "47de9ca9e844212861dc6a31df00b189b6b05d782152993835cef40900e88994"
  end

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
