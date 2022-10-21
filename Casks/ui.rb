cask "ui" do
  version "b755-macOS-0.56.3-b2d6dcc1ca1b470db93a710da52de392"
  sha256 "d3ce491d37b6aa184247359d1b4f1a5b2e48f6054f521a53d40f4de22b513884"

  url "https://fw-download.ubnt.com/data/uid-ui-desktop-app/#{version}.pkg",
      verified: "fw-download.ubnt.com"
  name "UI Desktop"
  desc "Corporate Wi-Fi, VPN, SSO, and HR Application"
  homepage "https://www.ui.com/uid"

  livecheck do
    url "https://api-gw.uid.alpha.ui.com:443/location/api/v1/public/fw/download/latest/?app=UI-DESKTOP-MACOS"
    strategy :header_match
    regex(/(\w+[._-]macOS[._-]\d+(?:\.\d+)+[._-]\w+)\.pkg/i)
  end

  depends_on macos: ">= :mojave"

  pkg "#{version}.pkg"

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
