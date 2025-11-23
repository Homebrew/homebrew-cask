cask "utc-menu-clock" do
  version "1.3"
  sha256 "099a638a7a45cb9085d29e75769caf44ed142fd74b9e4665fca2de7e4a641081"

  url "https://github.com/netik/UTCMenuClock/raw/master/downloads/UTCMenuClock_v#{version}_universal.zip"
  name "UTCMenuClock"
  desc "Menu bar clock"
  homepage "https://github.com/netik/UTCMenuClock"

  livecheck do
    url "https://github.com/netik/UTCMenuClock/tree/master/downloads"
    regex(/UTCMenuClock[._-]v?(\d+(?:\.\d+)+)[._-]universal\.zip/i)
    strategy :page_match
  end

  app "UTCMenuClock.app"

  zap trash: "~/Library/Preferences/net.retina.UTCMenuClock.plist"
end
