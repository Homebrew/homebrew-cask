cask "usenapp" do
  version "0.94.4,278"
  sha256 "ea3f0a1fc19eb45529d367204b9ff0f65d4d6749c599384fb43c83058e561c9a"

  url "https://www.usenapp.com/download/Usenapp-#{version.before_comma}.dmg"
  name "Usenapp"
  desc "Newsreader and Usenet client"
  homepage "https://www.usenapp.com/"

  livecheck do
    url "https://www.usenapp.com/download/appcast_unp1.xml"
    strategy :sparkle
  end

  app "Usenapp.app"

  zap trash: [
    "~/Library/Application Support/Usenapp",
    "~/Library/Caches/com.xoroxsoft.usenapp",
    "~/Library/Preferences/com.xoroxsoft.usenapp.plist",
    "~/Library/Saved Application State/com.xoroxsoft.usenapp.savedState",
  ]
end
