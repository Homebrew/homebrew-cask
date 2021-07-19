cask "webull" do
  version "5.1.10_us"
  sha256 "d17ed28d1b5e686704cc048ee04ef969cbdd654a77c04541dbea584ec9c19fbc"

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
