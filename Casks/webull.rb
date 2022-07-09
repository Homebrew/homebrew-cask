cask "webull" do
  dl_arch, livecheck_arch = Hardware::CPU.intel? ? ["us_x64", "qt_mac_global"] : ["us_arm64", "qt_m1_global"]

  version "6.0.5"

  if Hardware::CPU.intel?
    sha256 "8e5fa82ff254c503d2d3635f8b53cf4fae7cfb16e5f587bc23e4d697c0462f60"
  else
    sha256 "371b955bd7fb189a26d9d59cefa8a847e6059dc37e25aeb84add011a1e846c96"
  end

  url "https://u1sweb.webullfinance.com/us/desktop/Webull%20Desktop_#{version}_#{dl_arch}_signed.dmg",
      verified: "u1sweb.webullfinance.com/us/desktop/"
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
