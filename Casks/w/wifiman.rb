cask "wifiman" do
  arch arm: "arm64", intel: "amd64"

  version "1.1.3"
  sha256 arm:   "ca075d6ab6e8e5331247c0b60c4295456a394fecfc6bc29c23571386194bf60e",
         intel: "ca075d6ab6e8e5331247c0b60c4295456a394fecfc6bc29c23571386194bf60e"

  url "https://desktop.wifiman.com/wifiman-desktop-1.1.3-amd64.pkg"
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
