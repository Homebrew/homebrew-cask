cask "webull" do
  dl_arch, livecheck_arch = Hardware::CPU.intel? ? ["us", "qt_mac_global"] : ["usm1", "qt_m1_global"]

  version "5.10.5"

  if Hardware::CPU.intel?
    sha256 "ab818bc24ce34d511584e66253dc8fd5f1e74829c2e13320194753ac881f8300"
  else
    sha256 "e777371e5a4207ca45d74939b5d148d8146f8ff53b53961f71dc9468d8ac0e16"
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
