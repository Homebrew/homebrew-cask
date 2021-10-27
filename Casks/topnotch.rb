cask "topnotch" do
  version "1.1"
  sha256 "47d5e0c89996759fe4e2f6973c4e2fa552ddb966c47cc80d46a72f8c9073bd0d"

  url "https://updates.topnotch.app/TopNotch-#{version}.dmg"
  name "topnotch"
  desc "Utility to hide the notch"
  homepage "https://topnotch.app"

  app "TopNotch.app"

  zap trash: [
    "~/Library/Application Scripts/pl.maketheweb.TopNotch-LaunchAtLoginHelper",
    "~/Library/Caches/pl.maketheweb.TopNotch",
    "~/Library/Containers/pl.maketheweb.TopNotch-LaunchAtLoginHelper",
    "~/Library/Preferences/pl.maketheweb.TopNotch.plist",
    "~/Library/WebKit/pl.maketheweb.TopNotch",
  ]
end
