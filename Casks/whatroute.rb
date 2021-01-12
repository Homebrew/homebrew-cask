cask "whatroute" do
  version "2.4.0,11763"
  sha256 "7badf2d8526d64bf21d6431ad22fff8b01d88f3132a11148ce2cb110928de603"

  url "https://downloads.whatroute.net/software/whatroute-#{version.before_comma}.zip"
  name "WhatRoute"
  desc "Network diagnostic utility"
  homepage "https://www.whatroute.net/"

  livecheck do
    url "https://www.whatroute.net/whatroute#{version.major}appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :yosemite"

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
