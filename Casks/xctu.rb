cask "xctu" do
  version "40003027_AC"
  sha256 "a8c0bf2fd8b62caa86c1ee35e7c4379d70eab04e7c868f7f6a6875a5e41ada93"

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
