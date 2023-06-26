cask "topnotch" do
  version "1.3.2"
  sha256 "bedf07c46884e7c6bf43482fd48061beaf2f032a1e8bb23b422d55b85963e3d7"

  url "https://updates.topnotch.app/TopNotch-#{version}.dmg"
  name "topnotch"
  desc "Utility to hide the notch"
  homepage "https://topnotch.app/"

  livecheck do
    url "https://updates.topnotch.app/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :big_sur"

  app "TopNotch.app"

  zap trash: [
    "~/Library/Application Scripts/pl.maketheweb.TopNotch-LaunchAtLoginHelper",
    "~/Library/Application Support/TopNotch",
    "~/Library/Caches/pl.maketheweb.TopNotch",
    "~/Library/Containers/pl.maketheweb.TopNotch-LaunchAtLoginHelper",
    "~/Library/HTTPStorages/pl.maketheweb.TopNotch",
    "~/Library/Preferences/pl.maketheweb.TopNotch.plist",
    "~/Library/WebKit/pl.maketheweb.TopNotch",
  ]
end
