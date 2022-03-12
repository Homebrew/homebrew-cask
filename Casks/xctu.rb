cask "xctu" do
  version "40003027_AE"
  sha256 "549aa41bca87035df7251765404a6600c0696a260a09d6d35e8e11b783d5fa0a"

  url "https://ftp1.digi.com/support/utilities/#{version}.zip"
  name "XCTU"
  desc "Configuration Platform for XBee/RF Solutions"
  homepage "https://www.digi.com/products/embedded-systems/digi-xbee-tools/xctu"

  livecheck do
    url "https://www.digi.com/support/includes/utilities.aspx?pid=3352"
    regex(/(\d+[._-]\w+)\.zip/i)
  end

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
