cask 'whatroute' do
  version '2.0.24'
  sha256 '6fd7ce7fe4d781664a25fea46aed0b30d6bf93c2944649f92d02060cf3db7d99'

  url "https://downloads.whatroute.net/software/whatroute-#{version}.zip"
  appcast "https://www.whatroute.net/whatroute#{version.major}appcast.xml",
          checkpoint: '4341713df452487d23c6e8c68aaec3424e4b675a642b68d79947e03a2130691f'
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
