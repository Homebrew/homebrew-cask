cask 'whatroute' do
  version '2.0.22'
  sha256 '3d78079f4d0bf72de5d02c5c1b8edcb60909ce6ca3053cbb7135a8f89fa968e1'

  url "https://downloads.whatroute.net/software/whatroute-#{version}.zip"
  appcast "https://www.whatroute.net/whatroute#{version.major}appcast.xml",
          checkpoint: 'c1e70b8848633c76a64c3ed998d6111482dd131c0c8426fa5ff6e9d5681c3fe6'
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
