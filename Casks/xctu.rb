cask "xctu" do
  version "6.5.12,658"
  sha256 "98a06c6c4541e3d6636c2274b06cf781f8f1ac1cb195da87d1b2fa56aeab3675"

  url "https://hub.digi.com/support/products/xctu/?path=/support/asset/xctu-v-#{version.csv.second}-macos-x/"
  name "XCTU"
  desc "Configuration Platform for XBee/RF Solutions"
  homepage "https://www.digi.com/products/embedded-systems/digi-xbee-tools/xctu"

  livecheck do
    url "https://hub.digi.com/support/products/xctu/"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?xctu[._-]v[._-](\d+[._-]?\w+)[._-]macos-x/.*?v[._]\s*?(\d+(?:\.\d+)+).*?MacOS}i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
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
