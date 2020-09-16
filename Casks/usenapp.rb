cask "usenapp" do
  version "0.90.2"
  sha256 "dcd28e0d714517a86db4279afebc88986889314b28b5a95b46bf4d2191bc8d1c"

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
