cask "waterfox-classic" do
  version "2022.04"
  sha256 "384a0682a38a78a09fcee3cd571e90d1368a0f5d3279dfbe2039fcb341f5d277"

  url "https://github.com/WaterfoxCo/Waterfox-Classic/releases/download/#{version}-classic/Waterfox.Classic.#{version}.Setup.dmg",
      verified: "github.com/WaterfoxCo/Waterfox-Classic/"
  name "Waterfox Classic"
  desc "Web browser"
  homepage "https://classic.waterfox.net/"

  livecheck do
    url "https://github.com/WaterfoxCo/Waterfox-Classic/releases/"
    strategy :page_match
    regex(/Waterfox[._-]Classic[._-]v?(\d+(?:\.\d+)+)[._-]Setup\.dmg/i)
  end

  app "Waterfox Classic.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*",
    "~/Library/Application Support/Waterfox",
    "~/Library/Caches/Waterfox",
    "~/Library/Preferences/org.waterfoxproject.waterfox.plist",
  ]
end
