cask "usenapp" do
  version "1.24,362"
  sha256 "17fffaddfa3a75c0901af015fcc6ca162fd5a88ab5535e2a6ac976d8d9ccf299"

  url "https://www.usenapp.com/download/Usenapp-#{version.csv.first}.dmg"
  name "Usenapp"
  desc "Newsreader and Usenet client"
  homepage "https://www.usenapp.com/"

  livecheck do
    url "https://www.usenapp.com/download/appcast_unp1.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "Usenapp.app"

  zap trash: [
    "~/Library/Application Support/Usenapp",
    "~/Library/Caches/com.xoroxsoft.usenapp",
    "~/Library/Preferences/com.xoroxsoft.usenapp.plist",
    "~/Library/Saved Application State/com.xoroxsoft.usenapp.savedState",
  ]
end
