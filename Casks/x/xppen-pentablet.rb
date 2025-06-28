cask "xppen-pentablet" do
  version "4.0.8,250414"
  sha256 "c792fc0c5df8c38b75267d302d0c3ced49371ac7be73998875279bc627dad3ca"

  # Direkte CDN-URL - umgeht JavaScript-Redirects komplett!
  # Download ist ZIP mit DMG drin, Homebrew handled das automatisch
  url "https://download01.xp-pen.com/file/20#{version.csv.second[0, 2]}/#{version.csv.second[2, 2]}/XPPenMac_#{version.csv.first}_#{version.csv.second}.zip"
  name "XPPen PenTablet"
  desc "Universal driver for XPPen drawing tablets and pen displays"
  homepage "https://www.xp-pen.com/"

  # Automatische Version-Updates
  livecheck do
    url "https://www.xp-pen.com/download/star-g640.html"
    regex(/XPPenMac[._-]v?(\d+(?:\.\d+)+)[._-](\d+)/i)
    strategy :page_match do |page, regex|
      page.scan(regex).max_by { |match| match[1] }&.then { |match| "#{match[0]},#{match[1]}" }
    end
  end

  # Systemanforderungen
  depends_on macos: ">= :high_sierra" # 10.13+

  # Installation - ZIP enthält PKG direkt (nicht DMG!)
  # Homebrew entpackt die ZIP automatisch und macht das PKG verfügbar
  pkg "XPPenMac_#{version.csv.first}_#{version.csv.second}.pkg"

  # Uninstall-Logic für PKG-Installation (basierend auf PKG-Analyse)
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

  # Benutzer-Hinweise
  caveats do
    <<~EOS
      XPPen PenTablet requires system permissions to function properly:

      1. Open System Preferences → Security & Privacy → Privacy
      2. Grant permissions for:
         - Accessibility ✓
         - Input Monitoring ✓
         - Screen Recording (for some display features)
      3. Restart your computer after installation for full functionality

      This universal driver supports ALL XPPen tablet models including:
      • Star series (G430S, G540, G640, etc.)
      • Deco series (01, mini4, mini7, Fun, Pro, etc.)
      • Artist series (12, 13.3, 15.6, 22, etc.)
      • Artist Pro series (Gen 2 displays)

      After installation, open "PenTablet" from Applications to configure your tablet.

      Note: You may need to allow the app in System Preferences if macOS blocks it initially.
    EOS
  end
end
