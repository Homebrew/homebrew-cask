cask "webull" do
  dl_arch, livecheck_arch = Hardware::CPU.intel? ? ["us", "qt_mac_global"] : ["us_M1", "qt_m1_global"]

  version "6.0.1"

  if Hardware::CPU.intel?
    sha256 "bf9d449d643b9b4af45fab4854cbbc87ea995fb5fd874837cd8dac2921be4990"
  else
    sha256 "82351a2775cc6efb820ed93970b8ebf69fea0de951ed64659985bebc958be330"
  end

  url "https://u1sweb.webullfinance.com/us/desktop/Webull%20Desktop%20#{version}_#{dl_arch}.dmg",
      verified: "u1sweb.webullfinance.com/us/desktop/"
  name "Webull"
  desc "Desktop client for Webull Financial LLC"
  homepage "https://webull.com/"

  livecheck do
    url "https://infoapi.webullfintech.com/api/operation/appver/last?platform=#{livecheck_arch}&osv=10.15"
    strategy :page_match do |page|
      JSON.parse(page)["latestAppVersion"]
    end
  end

  depends_on macos: ">= :sierra"

  app "Webull Desktop.app"

  zap trash: "~/Library/Application Support/Webull Desktop"
end
