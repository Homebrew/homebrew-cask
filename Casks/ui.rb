cask "ui" do
  version "0.55.4,5a6f2d191f8d4046a87973296dc674d9,5738"
  sha256 "1b0ee61e769b87170ca005a49a2935b810d799bbec814a3e811d3e841a9fde68"

  url "https://fw-download.ubnt.com/data/uid-ui-desktop-app/#{version.csv.third}-macOS-#{version.csv.first}-#{version.csv.second}.pkg",
      verified: "fw-download.ubnt.com/data/uid-ui-desktop-app/"
  name "UI Desktop"
  desc "Corporate Wi-Fi, VPN, SSO, and HR Application"
  homepage "https://www.ui.com/uid"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :mojave"

  pkg "#{version.csv.third}-macOS-#{version.csv.first}-#{version.csv.second}.pkg"

  uninstall pkgutil:   [
              "com.ui.uid.desktop",
              "com.ui.uid.mac",
            ],
            launchctl: [
              "application.com.ui.uid.desktop.25686722.25686727",
              "com.ui.uid.desktop.privilegedtool",
              "com.ui.uid.desktop.startup",
            ],
            quit:      "com.ui.uid.desktop"

  zap trash: [
    "~/Library/Application Support/com.ui.uid.desktop/",
    "~/Library/Caches/com.ui.uid.desktop/",
    "~/Library/Logs/UI",
    "~/Library/Preferences/com.ui.uid.desktop.plist",
    "~/Library/Saved Application State/com.ui.uid.desktop.savedState/",
  ]
end
