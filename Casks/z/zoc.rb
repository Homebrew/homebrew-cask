cask "zoc" do
  version "8.09.2"
  sha256 "104a39b77ad9367662d94a333b25161acddd3a0a5acb01a525549ce2246577e4"

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  name "ZOC"
  desc "Professional SSH client and terminal emulator"
  homepage "https://www.emtec.com/zoc/"

  livecheck do
    url "https://www.emtec.com/downloads/zoc/zoc_changes.txt"
    regex(/\*\s*VERSION\s*(\d+(?:\.\d+)+)/i)
  end

  app "zoc#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/ZOC#{version.major} Files",
    "~/Library/Logs/EmTec_ZOC_Assert.log",
    "~/Library/Logs/ZOC",
    "~/Library/Preferences/com.emtec.zoc#{version.major}.plist",
    "~/Library/Preferences/com.emtec.zoc7.plist",
    "~/Library/Saved Application State/com.emtec.zoc#{version.major}.savedState",
  ]
end
