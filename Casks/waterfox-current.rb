cask "waterfox-current" do
  version "2020.07.2.1,6820.8.15"
  sha256 "ea5ab1e637638a7687acb6f31a37587979745a3311fabb1fc39a0f455737b4fe"

  url "https://cdn.waterfox.net/releases/osx64/installer/Waterfox%20Current%20#{version.before_comma}%20Setup.dmg"
  appcast "https://www.waterfox.net/download/"
  name "Waterfox Current"
  homepage "https://www.waterfox.net/"

  app "Waterfox Current.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*",
    "~/Library/Application Support/Waterfox",
    "~/Library/Caches/Waterfox",
    "~/Library/Preferences/org.waterfoxproject.waterfox.plist",
  ]
end
