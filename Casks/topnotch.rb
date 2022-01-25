cask "topnotch" do
  version "1.3"
  sha256 "9dd66619f88424960ab88b27215b6b464723767164c54c4c0ddc59bfb5fe5c89"

  url "https://updates.topnotch.app/TopNotch-#{version}.dmg"
  name "topnotch"
  desc "Utility to hide the notch"
  homepage "https://topnotch.app/"

  livecheck do
    url "https://updates.topnotch.app/appcast.xml"
    strategy :sparkle
  end

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
