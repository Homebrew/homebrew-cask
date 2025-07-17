cask "ui" do
  version "0.88.1,13de303e-cc4c-48b9-ba2a-8502c053133b,6d6a"
  sha256 "d629c6702869b041fbaa0d34ff76c9ae453225bdfceaeaaf92562c4f4c66b328"

  url "https://fw-download.ubnt.com/data/uid-ui-desktop-app/#{version.csv.third}-macOS-#{version.csv.first}-#{version.csv.second}.pkg",
      verified: "fw-download.ubnt.com/data/uid-ui-desktop-app/"
  name "UI Desktop"
  desc "Corporate Wi-Fi, VPN, SSO, and HR Application"
  homepage "https://www.ui.com/uid"

  livecheck do
    url "https://api-gw.uid.alpha.ui.com:443/location/api/v1/public/fw/download/latest/?app=UI-DESKTOP-MACOS"
    regex(/(\w+)[._-]macOS[._-](\d+(?:\.\d+)+)[._-](\h{8}-\h{4}-\h{4}-\h{4}-\h{12})/i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[2]},#{match[3]},#{match[1]}"
    end
  end

  depends_on macos: ">= :mojave"

  pkg "#{version.csv.third}-macOS-#{version.csv.first}-#{version.csv.second}.pkg"

  uninstall launchctl: [
              "application.com.ui.uid.desktop.25686722.25686727",
              "com.ui.uid.desktop.privilegedtool",
              "com.ui.uid.desktop.startup",
            ],
            quit:      "com.ui.uid.desktop",
            pkgutil:   [
              "com.ui.uid.desktop",
              "com.ui.uid.mac",
            ]

  zap trash: [
    "~/Library/Application Support/com.ui.uid.desktop",
    "~/Library/Caches/com.ui.uid.desktop",
    "~/Library/Logs/UI",
    "~/Library/Preferences/com.ui.uid.desktop.plist",
    "~/Library/Saved Application State/com.ui.uid.desktop.savedState",
  ]
end
