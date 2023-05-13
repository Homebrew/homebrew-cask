cask "usenapp" do
  version "1.26.6"
  sha256 "8abababd9c33cc3e0d068f4e89f799024032a72482e9f49b839086167ee639d8"

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
