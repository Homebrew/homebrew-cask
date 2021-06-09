cask "waterfox" do
  version "3.2.3"
  sha256 "d1c29651b3d39c509bab58054161ff60435fb639165d1c695078bd7e69a63c5a"

  url "https://cdn.waterfox.net/releases/osx64/installer/Waterfox%20G#{version}%20Setup.dmg"
  name "Waterfox"
  desc "Web browser"
  homepage "https://www.waterfox.net/"

  livecheck do
    url "https://www.waterfox.net/download/"
    strategy :page_match
    regex(%r{href=.*?/Waterfox%20G(\d+(?:\.\d+)*)%20Setup\.dmg}i)
  end

  app "Waterfox.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*",
    "~/Library/Application Support/Waterfox",
    "~/Library/Caches/Waterfox",
    "~/Library/Preferences/org.waterfoxproject.waterfox.plist",
  ]
end
