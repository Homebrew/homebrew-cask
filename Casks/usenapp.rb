cask "usenapp" do
  version "1.17,351"
  sha256 "cfa5a047e72107a1ea37b738acda2f6ac6dbc202a0c8465eca710cdf3a05cd74"

  url "https://www.usenapp.com/download/Usenapp-#{version.csv.first}.dmg"
  name "Usenapp"
  desc "Newsreader and Usenet client"
  homepage "https://www.usenapp.com/"

  livecheck do
    url "https://www.usenapp.com/download/appcast_unp1.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :el_capitan"

  app "Usenapp.app"

  zap trash: [
    "~/Library/Application Support/Usenapp",
    "~/Library/Caches/com.xoroxsoft.usenapp",
    "~/Library/Preferences/com.xoroxsoft.usenapp.plist",
    "~/Library/Saved Application State/com.xoroxsoft.usenapp.savedState",
  ]
end
