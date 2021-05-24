cask "usenapp" do
  version "1.07.4,322"
  sha256 "7079a478186e977d834045134956cdc981955677f72eb16ca88021a1f6b03d71"

  url "https://www.usenapp.com/download/Usenapp-#{version.before_comma}.dmg"
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
