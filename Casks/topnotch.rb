cask "topnotch" do
  version "1.2"
  sha256 "38c672b2f799e3ca02676f9eef5d2ecbb89350696a3eaa1c6f090ca53efcc1fe"

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
    "~/Library/Caches/pl.maketheweb.TopNotch",
    "~/Library/Containers/pl.maketheweb.TopNotch-LaunchAtLoginHelper",
    "~/Library/Preferences/pl.maketheweb.TopNotch.plist",
    "~/Library/WebKit/pl.maketheweb.TopNotch",
  ]
end
