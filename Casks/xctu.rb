cask "xctu" do
  version "40003027_AB"
  sha256 "d0b1af42d5f8a61d29a433f07065da0d39312e388ef117ef7c46ace763576d64"

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
