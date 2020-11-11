cask "waterfox-classic" do
  version "2020.10,5620.10.20"
  sha256 "4c6493bad04d12be6268e40cd44774fcb17aa545a5b7c2e335cdd141ea9e9ca9"

  url "https://cdn.waterfox.net/releases/osx64/installer/Waterfox%20Classic%20#{version.before_comma}%20Setup.dmg"
  appcast "https://www.waterfox.net/releases/"
  name "Waterfox Classic"
  desc "Cross-platform web browser"
  homepage "https://www.waterfox.net/"

  app "Waterfox Classic.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*",
    "~/Library/Application Support/Waterfox",
    "~/Library/Caches/Waterfox",
    "~/Library/Preferences/org.waterfoxproject.waterfox.plist",
  ]
end
