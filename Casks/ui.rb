cask "ui" do
  version "98a0-macOS-0.56.3-79aba98f601b49818f3dae0e3d34b754"
  sha256 :no_check

  url "https://api-gw.uid.alpha.ui.com:443/location/api/v1/public/fw/download/latest/?app=UI-DESKTOP-MACOS"
  name "UI Desktop"
  desc "Corporate Wi-Fi, VPN, SSO, and HR Application"
  homepage "https://www.ui.com/uid"

  livecheck do
    url :url
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
