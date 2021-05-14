cask "waterfox" do
  version "3.2.1"
  sha256 "19ead1d180d1e865e50fe20e46cb57215aed83b8954c409b96599bd83ea4c445"

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
