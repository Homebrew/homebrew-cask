cask "xppen-pentablet" do
  version "4.0.8,250414"
  sha256 "c792fc0c5df8c38b75267d302d0c3ced49371ac7be73998875279bc627dad3ca"

  url "https://download01.xp-pen.com/file/20#{version.csv.second[0, 2]}/#{version.csv.second[2, 2]}/XPPenMac_#{version.csv.first}_#{version.csv.second}.zip"
  name "XPPen PenTablet"
  desc "Universal driver for XPPen drawing tablets and pen displays"
  homepage "https://www.xp-pen.com/"

  livecheck do
    url "https://www.xp-pen.com/download/star-g640.html"
    regex(/XPPenMac[._-]v?(\d+(?:\.\d+)+)[._-](\d+)/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :high_sierra"

  pkg "XPPenMac_#{version.csv.first}_#{version.csv.second}.pkg"

  uninstall launchctl: "com.ugee.Pentablet2.0",
            quit:      [
              "com.ugee.PenTablet",
              "com.ugee.PenTabletDriverPro",
              "com.ugee.pentabletInfo",
              "com.ugee.UninstallPenTablet",
            ],
            pkgutil:   "com.pkg.XPPen",
            delete:    [
              "/Applications/XPPen",
              "/Library/Application Support/PenDriver",
              "/Library/LaunchAgents/com.ugee.Pentablet2.0.plist",
            ]

  zap trash: [
    "~/Library/Application Support/PenTablet",
    "~/Library/Caches/com.ugee.PenTablet",
    "~/Library/Group Containers/com.ugee.PenTablet",
    "~/Library/HTTPStorages/com.ugee.PenTablet",
    "~/Library/Preferences/com.ugee.PenTablet.plist",
    "~/Library/Preferences/com.ugee.PenTabletDriverPro.plist",
    "~/Library/Preferences/com.ugee.pentabletInfo.plist",
    "~/Library/Saved Application State/com.ugee.PenTablet.savedState",
    "~/Library/WebKit/com.ugee.PenTablet",
  ]
end
