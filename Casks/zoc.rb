cask "zoc" do
  version "8.05.3"
  sha256 "d22122520164b7a440f012eed1e30ea8650bdc4c3d4ac2a34668ad9e9ebbfe51"

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
    "~/Library/Preferences/com.emtec.zoc7.plist",
    "~/Library/Preferences/com.emtec.zoc#{version.major}.plist",
    "~/Library/Saved Application State/com.emtec.zoc#{version.major}.savedState",
  ]
end
