cask "usenapp" do
  version "1.04.2,312"
  sha256 "bee7a6bc6028bf2e0dfb4757366cb7b5ee3b311028d170f28e853e6420a12509"

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
