cask "xctu" do
  version "6.5.13,658"
  sha256 "d6822decbf57b688ac423e87e2c1a10872a40978ff60812dba44d6bc10729ec3"

  url "https://hub.digi.com/dp/path=/support/asset/xctu-v-#{version.csv.second}-macos-x/"
  name "XCTU"
  desc "Configuration Platform for XBee/RF Solutions"
  homepage "https://www.digi.com/products/embedded-systems/digi-xbee-tools/xctu"

  livecheck do
    url "https://hub.digi.com/support/products/xctu/"
    regex(%r{href=.*?xctu[._-]v[._-](\d+[._-]?\w+)[._-]macos-x/.*?v[._]\s*?(\d+(?:\.\d+)+).*?MacOS}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  installer script: {
    executable: "#{staged_path}/xctu_installer.app/Contents/MacOS/osx-x86_64",
    args:       ["--mode", "unattended"],
  }

  uninstall trash: "/Applications/XCTU.app"

  zap trash: [
    "~/Library/Caches/XCTU",
    "~/Library/Preferences/XCTU.plist",
    "~/Library/Saved Application State/XCTU.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
