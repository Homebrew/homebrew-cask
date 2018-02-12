cask 'whatroute' do
  version '2.1.2'
  sha256 '79fa60a1d0d9d1de2a36e972b46a1a6f35e845bad07d97aaa31ed50dbfac2fd7'

  url "https://downloads.whatroute.net/software/whatroute-#{version}.zip"
  appcast "https://www.whatroute.net/whatroute#{version.major}appcast.xml",
          checkpoint: 'f20ed43db5fd6fead6658c8272f39de887af8b6705303947014c9ba38161a3f5'
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
