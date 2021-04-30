cask "waterfox" do
  version "3.0.2,7820.12.15"
  sha256 "0b215d7779af3c59eee7a43c84bd9695443c8d07e05db250343cdee5f7f56aa2"

  url "https://cdn.waterfox.net/releases/osx64/installer/Waterfox%20G#{version.before_comma}%20Setup.dmg"
  appcast "https://www.waterfox.net/download/"
  name "Waterfox"
  desc "Web browser"
  homepage "https://www.waterfox.net/"

  app "Waterfox.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*",
    "~/Library/Application Support/Waterfox",
    "~/Library/Caches/Waterfox",
    "~/Library/Preferences/org.waterfoxproject.waterfox.plist",
  ]
end
