cask "waterfox-classic" do
  version "2020.09"
  sha256 "042f63a955d0bae80f9030727ff74fca2c66bdbf117a4a465b0ea4a050f5813e"

  url "https://cdn.waterfox.net/releases/osx64/installer/Waterfox%20Classic%20#{version}%20Setup.dmg"
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
