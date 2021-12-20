cask "utc-menu-clock" do
  version "1.2.3"
  sha256 "54b3b5c9a3609d771e5b1b2569c5fa7251914f4a0c16c33f5050ca38629f69be"

  url "https://github.com/netik/UTCMenuClock/raw/master/downloads/UTCMenuClock_v#{version}.zip"
  name "UTCMenuClock"
  desc "Menu bar clock"
  homepage "https://github.com/netik/UTCMenuClock"

  livecheck do
    url "https://github.com/netik/UTCMenuClock/tree/master/downloads"
    strategy :page_match
    regex(%r{href=.*?/UTCMenuClock[._-]v?(\d+(?:\.\d+)+)\.zip}i)
  end

  app "UTCMenuClock.app"

  zap trash: "~/Library/Preferences/net.retina.UTCMenuClock.plist"
end
