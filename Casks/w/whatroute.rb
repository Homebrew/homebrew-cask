cask "whatroute" do
  version "2.8.1"
  sha256 "6c5840b7e0a28c3ffa7454954f6d87d0676bcb3c00036254007e09142f49f3ae"

  url "https://www.whatroute.net/software/whatroute-#{version}.zip"
  name "WhatRoute"
  desc "Network diagnostic utility"
  homepage "https://www.whatroute.net/"

  livecheck do
    url "https://www.whatroute.net/whatroute#{version.major}appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: :sonoma

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
