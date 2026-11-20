cask "webull" do
  version "9.18.6,9000300132"
  sha256 "739f1203d6096773c93c62c567acbe7a3993f464ad6461f4704fd277f1654bae"

  url "https://u1sweb.webullfintech.com/us/Webull%20Desktop_#{version.csv.first}_#{version.csv.second}_global_universalsigned.dmg"
  name "Webull"
  desc "Desktop client for Webull Financial LLC"
  homepage "https://www.webull.com/"

  livecheck do
    url "https://infoapi.webullfintech.com/api/operation/appver/last?platform=qt_mac_global"
    regex(/Webull%20Desktop[._-]v?(\d+(?:[._]\d+)+).*?\.dmg/i)
    strategy :json do |json, regex|
      json["upgradeUrl"]&.scan(regex)&.map { |match| match[0].tr("_", ",") }
    end
  end

  depends_on :macos

  app "Webull Desktop.app"

  uninstall quit: "com.webull.desktop.v1"

  zap trash: [
    "~/.config/Webull Desktop",
    "~/Library/Application Support/Webull Desktop",
    "~/Library/Preferences/com.webull.desktop.v1.plist",
    "~/Library/Preferences/com.webulldesktop.*",
    "~/Library/Saved Application State/com.webull.desktop.v1.savedState",
  ]
end
