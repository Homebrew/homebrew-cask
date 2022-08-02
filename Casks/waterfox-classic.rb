cask "waterfox-classic" do
  version "2022.06"
  sha256 "ba80512c8f4348619d408f69525e5b954a115bc155a6e1bce96dfb49770bc151"

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
