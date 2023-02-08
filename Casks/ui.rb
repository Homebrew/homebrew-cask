cask "ui" do
  version "0.59.1,32a233e424324614b55da564443f1a61,c0d2"
  sha256 "059d6468b2813fd2550078474e93f97d4955c81723d18887420e9d1e7d6e8fa9"

  url "https://fw-download.ubnt.com/data/uid-ui-desktop-app/#{version.csv.third}-macOS-#{version.csv.first}-#{version.csv.second}.pkg",
      verified: "fw-download.ubnt.com/data/uid-ui-desktop-app/"
  name "UI Desktop"
  desc "Corporate Wi-Fi, VPN, SSO, and HR Application"
  homepage "https://www.ui.com/uid"

  livecheck do
    url "https://api-gw.uid.alpha.ui.com:443/location/api/v1/public/fw/download/latest/?app=UI-DESKTOP-MACOS"
    regex(/(\w+)[._-]macOS[._-](\d+(?:\.\d+)+)[._-](\w+)/i)
    strategy :header_match do |headers, regex|
      match = headers["location"].match(regex)
      next if match.blank?

      "#{match[2]},#{match[3]},#{match[1]}"
    end
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
