cask "waterfox-classic" do
  version "2021.04.2"
  sha256 "bac0697007218978a87889c0bdf6b1e386d8235f3703eff505ce4ce062fac0bb"

  url "https://cdn.waterfox.net/releases/osx64/installer/Waterfox%20Classic%20#{version}%20Setup.dmg"
  name "Waterfox Classic"
  desc "Web browser"
  homepage "https://www.waterfox.net/"

  livecheck do
    url "https://www.waterfox.net/download/"
    strategy :page_match
    regex(%r{href=.*?/Waterfox%20Classic%20(\d+(?:\.\d+)*)%20Setup\.dmg}i)
  end

  app "Waterfox Classic.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.waterfox.sfl*",
    "~/Library/Application Support/Waterfox",
    "~/Library/Caches/Waterfox",
    "~/Library/Preferences/org.waterfoxproject.waterfox.plist",
  ]
end
