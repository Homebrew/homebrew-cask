cask "usenapp" do
  version "0.92.1"
  sha256 "a2ce1873cff71a562e10317a63b74e38168fd6101b2f44eaeb3f817a5c3faa9b"

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
