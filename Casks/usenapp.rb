cask "usenapp" do
  version "0.80.8"
  sha256 "244b34383383e5f4c81ace42c1eff82c19ee2cdcf2b90bcde907e5d055e74c41"

  url "https://www.usenapp.com/download/Usenapp-#{version}.dmg"
  appcast "https://www.usenapp.com/download/appcast_unp1.xml"
  name "Usenapp"
  desc "Newsreader and usenet client for Mac OSX"
  homepage "https://www.usenapp.com/"

  app "Usenapp.app"

  zap trash: [
    "~/Library/Application Support/Usenapp",
    "~/Library/Caches/com.xoroxsoft.usenapp",
    "~/Library/Preferences/com.xoroxsoft.usenapp.plist",
    "~/Library/Saved Application State/com.xoroxsoft.usenapp.savedState",
  ]
end
