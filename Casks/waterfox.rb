cask "waterfox" do
  name "Waterfox"
  desc "Web browser"
  homepage "https://www.waterfox.net/"
  version "4.0.8"
  sha256 "fe49d8da775d0d1ae7914cd51cf59fa9032cf02d398ac8891f2b722f4c2799b0"

  url "https://github.com/WaterfoxCo/Waterfox/releases/download/G#{version}/Waterfox.G#{version}.Setup.dmg"

  livecheck do
    url "https://www.waterfox.net/download/"
    regex(%r{href=.*?/Waterfox\.G(\d+(?:\.\d+)+)\.Setup\.dmg}i)
  end

  depends_on macos: ">= :yosemite"

  app "Waterfox.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*",
    "~/Library/Application Support/Waterfox",
    "~/Library/Caches/Waterfox",
    "~/Library/Preferences/org.waterfoxproject.waterfox.plist",
  ]
end