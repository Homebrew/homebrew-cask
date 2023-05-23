cask "usenapp" do
  version "1.27"
  sha256 "64c851e7ba168a72767c0c7effb10fed35a5636cd0fca931df4ccd8d4333499c"

  url "https://www.usenapp.com/download/Usenapp-#{version}.dmg"
  name "Usenapp"
  desc "Newsreader and Usenet client"
  homepage "https://www.usenapp.com/"

  livecheck do
    url "https://www.usenapp.com/download/appcast_unp1.xml"
    strategy :sparkle, &:short_version
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
