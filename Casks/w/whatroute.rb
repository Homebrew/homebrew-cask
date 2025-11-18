cask "whatroute" do
  version "2.7.2"
  sha256 "b500084ab8ceb4625a212704b0e076bb29011002a0e681fbc865a58a65ad7a49"

  url "https://www.whatroute.net/software/whatroute-#{version}.zip"
  name "WhatRoute"
  desc "Network diagnostic utility"
  homepage "https://www.whatroute.net/"

  livecheck do
    url "https://www.whatroute.net/whatroute#{version.major}appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :big_sur"

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
