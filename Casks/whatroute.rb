cask 'whatroute' do
  version '2.2.1'
  sha256 '11067888af1cdc72d6aed04edcf380745b172a1da408b49c07ea4571f65bb284'

  url "https://downloads.whatroute.net/software/whatroute-#{version}.zip"
  appcast "https://www.whatroute.net/whatroute#{version.major}appcast.xml"
  name 'WhatRoute'
  homepage 'https://www.whatroute.net/'

  depends_on macos: '>= :yosemite'

  app 'WhatRoute.app'

  uninstall delete:    "/Library/PrivilegedHelperTools/net.whatroute.whatroute#{version.major}helper",
            launchctl: [
                         'net.whatroute.LaunchHelper',
                         "net.whatroute.whatroute#{version.major}helper",
                       ],
            quit:      "net.whatroute.whatroute#{version.major}"

  zap trash: [
               "~/Library/Caches/net.whatroute.whatroute#{version.major}",
               "~/Library/Logs/net.whatroute.whatroute#{version.major}",
               "~/Library/Preferences/net.whatroute.whatroute#{version.major}.plist",
             ]
end
