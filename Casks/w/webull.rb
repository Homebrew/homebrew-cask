cask "webull" do
  version "7.1.1"
  sha256 "c36e3088cd15ae498ef1f478b842cf8ea8bb6385491cd348cce89a317c160863"

  url "https://u1sweb.webullfintech.com/us/Webull%20Desktop_#{version}_global_universalsigned.dmg",
      verified: "u1sweb.webullfintech.com/us/"
  name "Webull"
  desc "Desktop client for Webull Financial LLC"
  homepage "https://www.webull.com/"

  livecheck do
    url "https://infoapi.webullfintech.com/api/operation/appver/last?platform=qt_mac_global&osv=10.14"
    regex(/Webull%20Desktop[._-](\d+(?:\.\d+)+).*?.dmg/i)
  end

  depends_on macos: ">= :mojave"

  app "Webull Desktop.app"

  zap trash: [
    "~/.config/Webull Desktop",
    "~/Library/Application Support/Webull Desktop",
    "~/Library/Preferences/com.webulldesktop.*",
    "~/Library/Saved Application State/com.webull.desktop.v1.savedState",
  ]
end
