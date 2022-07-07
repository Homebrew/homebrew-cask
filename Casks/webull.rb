cask "webull" do
  dl_arch, livecheck_arch = Hardware::CPU.intel? ? ["us_x64", "qt_mac_global"] : ["us_arm64", "qt_m1_global"]

  version "6.0.2,600802"

  if Hardware::CPU.intel?
    sha256 "01f3b0f215716f50a4caa93fe7f1ccdf3469bceeca10fd6cb9d1ab67d86f9658"
  else
    sha256 "aadd015041696474ef3a80887fc8ecd89108736f2e49748a207fa51d86c6b84b"
  end

  url "https://u1sweb.webullfinance.com/us/desktop/Webull%20Desktop_#{version.csv.first}_#{dl_arch}_signed_#{version.csv.second}.dmg",
      verified: "u1sweb.webullfinance.com/us/desktop/"
  name "Webull"
  desc "Desktop client for Webull Financial LLC"
  homepage "https://webull.com/"

  livecheck do
    url "https://infoapi.webullfintech.com/api/operation/appver/last?platform=#{livecheck_arch}&osv=10.15"
    regex(/Webull%20Desktop[._-](\d+(?:\.\d+)+).*?[._-](\d+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match.first},#{match.second}" }
    end
  end

  depends_on macos: ">= :mojave"

  app "Webull Desktop.app"

  zap trash: "~/Library/Application Support/Webull Desktop"
end
