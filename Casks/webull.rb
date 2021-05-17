cask "webull" do
  version "5.0.1_us"
  sha256 "5225d65bdbcd694315434ad4a287ddd1f48afd509faa9bd320d45fc4c9d811d0"

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
