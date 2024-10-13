cask "wifiman" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.0"
  sha256 arm:   "f9544ae95a76bf0f5dec77fa0b3a37b0115190349df63a11e5318e67141ddd67",
         intel: "ad0f92c992c8aa60f8bc442e8d3c4c801d21dbce87f0120effb129b61b315091"

  url "https://desktop.wifiman.com/wifiman-desktop-#{version}-#{arch}.pkg"
  name "WiFiman Desktop"
  desc "Network monitoring and troubleshooting tool"
  homepage "https://wifiman.com/"

  livecheck do
    skip "No version information available"
  end

  pkg "wifiman-desktop-#{version}-#{arch}.pkg"

  uninstall launchctl: "wifiman-desktop",
            pkgutil:   [
              "ui.wifiman.com",
              "ui.wifiman.network.helper.WiFimanNetworkHelper",
            ],
            delete:    "/Applications/WiFiman Desktop.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ui.wifiman-desktop.sfl*",
    "~/Library/Application Support/wifiman-desktop",
    "~/Library/Logs/wifiman-desktop",
    "~/Library/Preferences/ui.wifiman-desktop.plist",
    "~/Library/Saved Application State/ui.wifiman-desktop.savedState",
  ]
end
