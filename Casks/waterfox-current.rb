cask "waterfox-current" do
  version "2020.08,6820.8.24"
  sha256 "454dcdfc03adbf2a6f72ba514a039bd4f1ed383df31f9dc1aec0b3de569b3d94"

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
