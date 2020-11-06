cask "xctu" do
  version "40003027_AA"
  sha256 "9d5edbf6470367716780a310d265e1610cc0f2f40f394a14a10ad36f7dd6d821"

  url "https://ftp1.digi.com/support/utilities/#{version}.zip"
  appcast "https://www.digi.com/support/includes/utilities.aspx?pid=3352"
  name "XCTU"
  homepage "https://www.digi.com/products/embedded-systems/digi-xbee-tools/xctu"

  installer script: {
    executable: "#{staged_path}/xctu_installer.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
  }

  uninstall trash: "/Applications/XCTU.app"

  zap trash: [
    "~/Library/Caches/XCTU",
    "~/Library/Preferences/XCTU.plist",
    "~/Library/Saved Application State/XCTU.savedState",
  ]
end
