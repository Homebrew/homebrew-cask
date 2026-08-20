cask "utc-menu-clock" do
  version "1.5"
  sha256 "3caf9c44e65fe93da7083b58bb792974c44d9c6d12b934d19370b0003305bf87"

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

  depends_on macos: :sequoia

  app "UTCMenuClock.app"

  zap trash: "~/Library/Preferences/net.retina.UTCMenuClock.plist"
end
