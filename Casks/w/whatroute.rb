cask "whatroute" do
  version "2.6.7"
  sha256 "c1aee083640722e811a0abfcf1d444547be0b5c6af01a20eea330c0a9ba161e5"

  url "https://downloads.whatroute.net/software/whatroute-#{version}.zip"
  name "WhatRoute"
  desc "Network diagnostic utility"
  homepage "https://www.whatroute.net/"

  livecheck do
    url "https://www.whatroute.net/whatroute#{version.major}appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :high_sierra"

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
