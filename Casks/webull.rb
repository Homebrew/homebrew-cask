cask "webull" do
  version "5.4.20_us"
  sha256 "deb58df1fdfa6b5f4a7ca0bed69897f38b6e0b5e79267f2585bf542cc76cb9a6"

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
