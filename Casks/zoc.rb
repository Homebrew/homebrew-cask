cask "zoc" do
  version "8.06.1"
  sha256 "ce78b882e9c93ab25d1d86dde6ee22726995dcbbdd951e953613533f3e01ac9e"

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
