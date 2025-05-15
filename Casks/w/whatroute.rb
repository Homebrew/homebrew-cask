cask "whatroute" do
  version "2.7.1"
  sha256 "cc43b0ffca316e25878d83e9bf1f117ff4ccf6b1cc0126c93c79990d75de20c7"

  url "https://www.whatroute.net/software/whatroute-#{version}.zip"
  name "WhatRoute"
  desc "Network diagnostic utility"
  homepage "https://www.whatroute.net/"

  livecheck do
    url "https://www.whatroute.net/whatroute#{version.major}appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :high_sierra"

  app "WhatRoute.app"

  uninstall launchctl: [
              "net.whatroute.LaunchHelper",
              "net.whatroute.whatroute#{version.major}helper",
            ],
            quit:      "net.whatroute.whatroute#{version.major}",
            delete:    "/Library/PrivilegedHelperTools/net.whatroute.whatroute#{version.major}helper"

  zap trash: [
    "~/Library/Caches/net.whatroute.whatroute#{version.major}",
    "~/Library/Logs/net.whatroute.whatroute#{version.major}",
    "~/Library/Preferences/net.whatroute.whatroute#{version.major}.plist",
  ]
end
