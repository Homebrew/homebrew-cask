cask "utc-menu-clock" do
  version "1.4"
  sha256 "bb6104168763b1878e14a2c6583f0cde03549e437c870b096b5147eb20d7d7b1"

  url "https://github.com/netik/UTCMenuClock/raw/master/downloads/UTCMenuClock_v#{version}_universal.zip"
  name "UTCMenuClock"
  desc "Menu bar clock"
  homepage "https://github.com/netik/UTCMenuClock"

  livecheck do
    url "https://github.com/netik/UTCMenuClock/tree/master/downloads"
    regex(/UTCMenuClock[._-]v?(\d+(?:\.\d+)+)[._-]universal\.zip/i)
    strategy :page_match
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "UTCMenuClock.app"

  zap trash: "~/Library/Preferences/net.retina.UTCMenuClock.plist"
end
