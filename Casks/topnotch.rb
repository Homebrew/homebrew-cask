cask "topnotch" do
  version "1.3.1"
  sha256 "c8f5b516ba11590b269852f074a070ac6fb87662345fe390f4a66dd1a6e4faf2"

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
