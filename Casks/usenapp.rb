cask "usenapp" do
  version "0.99.2,300"
  sha256 "9bf6bf250c0ebe214888647cb2dc4a596ab4909870ea94578528dccedbc2cd21"

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
