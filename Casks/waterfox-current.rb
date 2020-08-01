cask "waterfox-current" do
  version "2020.07.1,6820.7.28"
  sha256 "3cd9fcefd65310c172111a680597019085ac5a9badf39498877da1952e659783"

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
