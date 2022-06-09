cask "usenapp" do
  version "1.21,356"
  sha256 "e05b258a3662a3dc8d787a3008c0ad1c5ddb6fa773d5e0e9504cb20d15ecd10d"

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
