cask "waterfox-classic" do
  version "2020.12,5620.12.7"
  sha256 "12d9a0a629dd800d31095bd3a89cb0b41e31ee537233556639be636fa685eca9"

  url "https://cdn.waterfox.net/releases/osx64/installer/Waterfox%20Classic%20#{version.before_comma}%20Setup.dmg"
  name "Waterfox Classic"
  desc "Web browser"
  homepage "https://www.waterfox.net/"

  livecheck do
    url "https://www.waterfox.net/releases/"
    strategy :page_match
    regex(%r{href=.*?/Waterfox%20Classic%20(\d+(?:\.\d+)*)%20Setup\.dmg}i)
  end

  app "Waterfox Classic.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*",
    "~/Library/Application Support/Waterfox",
    "~/Library/Caches/Waterfox",
    "~/Library/Preferences/org.waterfoxproject.waterfox.plist",
  ]
end
