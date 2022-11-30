cask "usenapp" do
  version "1.24.2,364"
  sha256 "b17c611743f1b8b90df29b8042e6a8dae8bc5005c923cd4ddddbab7bb2e86432"

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
