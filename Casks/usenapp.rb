cask "usenapp" do
  version "0.92.4"
  sha256 "64407fdb3e8f02fc1b94b37bf25e333d3d97b390484d96db7cc2a7030517adf0"

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
