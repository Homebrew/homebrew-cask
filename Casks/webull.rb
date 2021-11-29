cask "webull" do
  version "5.5.1_us"
  sha256 "dcef582e344679ad9edcb610ef6e50c4688266010898c86dd62f0486051510da"

  url "https://pub.webull.com/us/desktop/Webull%20Desktop%20#{version}.dmg"
  name "Webull"
  desc "Desktop client for Webull Financial LLC"
  homepage "https://webull.com/"

  livecheck do
    url "https://infoapi.webullfintech.com/api/operation/appver/last?platform=qt_mac_global"
    regex(%r{"upgradeUrl"\s*:\s*"[^"]*/Webull%20Desktop%20(\d+(?:\.\d+)*(?:[._-][a-z]+)?)\.dmg"}i)
  end

  depends_on macos: ">= :sierra"

  app "Webull Desktop.app"

  zap trash: "~/Library/Application Support/Webull Desktop"
end
