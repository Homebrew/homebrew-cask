cask "whatroute" do
  version "2.5.3,11799"
  sha256 "0f71b7d0deb160b60ee9c1a2f9d7f1f8de22f5f79870606d4aa37ad7b0ffc6dc"

  url "https://downloads.whatroute.net/software/whatroute-#{version.csv.first}.zip"
  name "WhatRoute"
  desc "Network diagnostic utility"
  homepage "https://www.whatroute.net/"

  livecheck do
    url "https://www.whatroute.net/whatroute#{version.major}appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :el_capitan"

  app "WhatRoute.app"

  uninstall delete:    "/Library/PrivilegedHelperTools/net.whatroute.whatroute#{version.major}helper",
            launchctl: [
              "net.whatroute.LaunchHelper",
              "net.whatroute.whatroute#{version.major}helper",
            ],
            quit:      "net.whatroute.whatroute#{version.major}"

  zap trash: [
    "~/Library/Caches/net.whatroute.whatroute#{version.major}",
    "~/Library/Logs/net.whatroute.whatroute#{version.major}",
    "~/Library/Preferences/net.whatroute.whatroute#{version.major}.plist",
  ]
end
