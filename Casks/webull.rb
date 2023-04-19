cask "webull" do
  version "6.11.1"
  sha256 "e99e51e6ece3ea5dac416aadc9bb841474876f08a4a6c22e31226a697f1cf721"

  url "https://u1sweb.webullfintech.com/us/Webull%20Desktop_#{version}_global_universalsigned.dmg",
      verified: "u1sweb.webullfintech.com/us/"
  name "Webull"
  desc "Desktop client for Webull Financial LLC"
  homepage "https://webull.com/"

  livecheck do
    url "https://infoapi.webullfintech.com/api/operation/appver/last?platform=qt_mac_global&osv=10.14"
    regex(/Webull%20Desktop[._-](\d+(?:\.\d+)+).*?.dmg/i)
  end

  depends_on macos: ">= :mojave"

  app "Webull Desktop.app"

  zap trash: "~/Library/Application Support/Webull Desktop"
end
