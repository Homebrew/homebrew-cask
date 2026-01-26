cask "usenapp" do
  version "1.28"
  sha256 "af729bd66057ac0962a68537caca9afbb8b381c794d14b3ba1bdba2d64eebc15"

  url "https://www.usenapp.com/download/Usenapp-#{version}.dmg"
  name "Usenapp"
  desc "Newsreader and Usenet client"
  homepage "https://www.usenapp.com/"

  livecheck do
    url "https://www.usenapp.com/download/appcast_unp1.xml"
    strategy :sparkle, &:short_version
  end

  app "Usenapp.app"

  zap trash: [
    "~/Library/Application Support/Usenapp",
    "~/Library/Caches/com.xoroxsoft.usenapp",
    "~/Library/Preferences/com.xoroxsoft.usenapp.plist",
    "~/Library/Saved Application State/com.xoroxsoft.usenapp.savedState",
  ]
end
