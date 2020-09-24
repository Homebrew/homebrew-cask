cask "waterfox-current" do
  version "2020.09,6820.9.22"
  sha256 "f98452eadb537f73354da1787ba535c1ce9a8e3447e97f3431825e8455d9f357"

  url "https://cdn.waterfox.net/releases/osx64/installer/Waterfox%20Current%20#{version.before_comma}%20Setup.dmg"
  appcast "https://www.waterfox.net/download/"
  name "Waterfox Current"
  desc "Web browser"
  homepage "https://www.waterfox.net/"

  app "Waterfox Current.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*",
    "~/Library/Application Support/Waterfox",
    "~/Library/Caches/Waterfox",
    "~/Library/Preferences/org.waterfoxproject.waterfox.plist",
  ]
end
