cask "waterfox-current" do
  version "2020.10,6820.10.20"
  sha256 "4bbeb0210e75f33959cb60e4ef8b35176c4f01d9bc684d4f217255d3b7ecfb30"

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
