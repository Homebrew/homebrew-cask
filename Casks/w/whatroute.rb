cask "whatroute" do
  version "2.8.2"
  sha256 "89c8b5941e8491717e91b2e5199648100f421341d2ddf434562551fb1cf7c56c"

  url "https://www.whatroute.net/software/whatroute-#{version}.zip"
  name "WhatRoute"
  desc "Network diagnostic utility"
  homepage "https://www.whatroute.net/"

  livecheck do
    url "https://www.whatroute.net/whatroute#{version.major}appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "WhatRoute.app"

  uninstall launchctl: [
              "net.whatroute.LaunchHelper",
              "net.whatroute.whatroute#{version.major}helper",
            ],
            quit:      "net.whatroute.whatroute#{version.major}",
            delete:    "/Library/PrivilegedHelperTools/net.whatroute.whatroute#{version.major}helper"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.whatroute.whatroute#{version.major}.sfl*",
    "~/Library/Caches/net.whatroute.whatroute#{version.major}",
    "~/Library/Logs/net.whatroute.whatroute#{version.major}",
    "~/Library/Preferences/net.whatroute.whatroute#{version.major}.plist",
  ]
end
