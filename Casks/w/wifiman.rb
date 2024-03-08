cask "wifiman" do
  arch arm: "arm64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "47c1794e20d8a728f790beb26e8bdbd5a30a251fd421419d2589fb40ca3faf7a",
         intel: "be1e7bb2123a94ecb624ebc26ad3b83d075193aa0d70b06b05bd0f0fb2f70da9"

  url "https://desktop.wifiman.com/wifiman-desktop-#{version}-mac-#{arch}.pkg"
  name "WiFiman Desktop"
  desc "Network monitoring and troubleshooting tool"
  homepage "https://wifiman.com/"

  livecheck do
    skip "No version information available"
  end

  pkg "wifiman-desktop-#{version}-mac-#{arch}.pkg"

  uninstall launchctl: "wifiman-desktop",
            pkgutil:   "com.ui.wifiman-desktop",
            delete:    "/Applications/WiFiman Desktop.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.ui.wifiman-desktop.sfl*",
    "~/Library/Application Support/wifiman-desktop",
    "~/Library/Logs/wifiman-desktop",
    "~/Library/Preferences/com.ui.wifiman-desktop.plist",
    "~/Library/Saved Application State/com.ui.wifiman-desktop.savedState",
  ]
end
