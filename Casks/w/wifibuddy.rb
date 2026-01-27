cask "wifibuddy" do
  version "1.0.0"
  sha256 "646289f08b99ad43b88ac5f96a1cd2884e87ee9846b2327805a84c1bacfb1ba1"

  url "https://github.com/ken7y/MacWifiBuddy/releases/download/v#{version}/WiFiBuddy-#{version}.zip"
  name "WiFiBuddy"
  desc "WiFi diagnostics and network monitoring for macOS menu bar"
  homepage "https://github.com/ken7y/MacWifiBuddy"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "WiFiBuddy.app"

  zap trash: [
    "~/Library/Preferences/com.wifibuddy.app.plist",
  ]
end
