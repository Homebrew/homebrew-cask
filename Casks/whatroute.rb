cask "whatroute" do
  version "2.5.2,11785"
  sha256 "4c7918d3e08c5e216f9fae2ee4dfebc8445f1191638bdbcb5154e1087fd2f529"

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
