cask "waterfox-classic" do
  version "2021.10"
  sha256 "00356a042c9cdeeb11eefe269db50a4ade888c733ce5a0c9c06347e6ef920b2a"

  url "https://cdn.waterfox.net/releases/osx64/installer/Waterfox%20Classic%20#{version}%20Setup.dmg"
  name "Waterfox Classic"
  desc "Web browser"
  homepage "https://www.waterfox.net/"

  livecheck do
    url "https://www.waterfox.net/download/"
    regex(%r{href=.*?/Waterfox%20Classic%20(\d+(?:\.\d+)+)%20Setup\.dmg}i)
  end

  app "Waterfox Classic.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*",
    "~/Library/Application Support/Waterfox",
    "~/Library/Caches/Waterfox",
    "~/Library/Preferences/org.waterfoxproject.waterfox.plist",
  ]
end
