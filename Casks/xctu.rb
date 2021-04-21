cask "xctu" do
  version "40003027_AC"
  sha256 "a8c0bf2fd8b62caa86c1ee35e7c4379d70eab04e7c868f7f6a6875a5e41ada93"

  url "https://ftp1.digi.com/support/utilities/#{version}.zip"
  name "XCTU"
  desc "Configuration Platform for XBee/RF Solutions"
  homepage "https://www.digi.com/products/embedded-systems/digi-xbee-tools/xctu"

  livecheck do
    url "https://www.digi.com/support/includes/utilities.aspx?pid=3352"
    strategy :page_match
    regex(%r{href=.*?/(\d+_AC)\.zip}i)
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
