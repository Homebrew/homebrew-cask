cask "usenapp" do
  version "0.91.4"
  sha256 "33b2e3505edc61af69fd4c9f4d419150c8df07498655ed62451386d7858e24ae"

  url "https://www.usenapp.com/download/Usenapp-#{version}.dmg"
  appcast "https://www.usenapp.com/download/appcast_unp1.xml"
  name "Usenapp"
  desc "Newsreader and Usenet client"
  homepage "https://www.usenapp.com/"

  app "Usenapp.app"

  zap trash: [
    "~/Library/Application Support/Usenapp",
    "~/Library/Caches/com.xoroxsoft.usenapp",
    "~/Library/Preferences/com.xoroxsoft.usenapp.plist",
    "~/Library/Saved Application State/com.xoroxsoft.usenapp.savedState",
  ]
end
