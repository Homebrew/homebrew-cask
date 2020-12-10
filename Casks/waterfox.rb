cask "waterfox" do
  version "3.0.1,7820.11.27"
  sha256 "ec122142b75e678d2246e4ad273b5e54ce9f998b117312e203e5f7631cf503e0"

  url "https://cdn.waterfox.net/releases/osx64/installer/Waterfox%20G#{version.before_comma}%20Setup.dmg"
  appcast "https://www.waterfox.net/download/"
  name "Waterfox Current"
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
