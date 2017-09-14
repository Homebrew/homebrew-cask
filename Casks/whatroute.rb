cask 'whatroute' do
  version '2.0.23'
  sha256 'd974b0b238ac13c1e7f8bababc9dcff9e000b29e458446e540caeeab01c3a563'

  url "https://downloads.whatroute.net/software/whatroute-#{version}.zip"
  appcast "https://www.whatroute.net/whatroute#{version.major}appcast.xml",
          checkpoint: '788527df9815494a83baaf328bb5c36f3eb0f06b54fb108b8af52994658cb504'
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

  zap delete: [
                "~/Library/Caches/net.whatroute.whatroute#{version.major}",
                "~/Library/Logs/net.whatroute.whatroute#{version.major}",
              ],
      trash:  "~/Library/Preferences/net.whatroute.whatroute#{version.major}.plist"
end
