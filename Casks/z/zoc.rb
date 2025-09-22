cask "zoc" do
  version "9.01.8"
  sha256 "005ef150473ce9084bdc0f7961e678ab6beb79b3d7a38e9e074a0751289e497b"

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
