cask "webull" do
  version "9.18.7,9000300133"
  sha256 "24c9137b2d25a792fd88e649b258319503456cb61053bcc9fc75d428e0d8bd5f"

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
