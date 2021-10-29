cask "webull" do
  version "5.4.5_us"
  sha256 "054bb8e7da7d29f02b05951ae898208e0e36d40f67583b7bf48b9d4c2d6abea7"

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
