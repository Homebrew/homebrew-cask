cask 'whatroute' do
  version '2.1.0'
  sha256 'd6ad1307eee75180d71868861f33a72c59674d528622032069f85fdb12792f29'

  url "https://downloads.whatroute.net/software/whatroute-#{version}.zip"
  appcast "https://www.whatroute.net/whatroute#{version.major}appcast.xml",
          checkpoint: '81c8d6f6622081747b86a8998e24091cec3e4f3f20a05843605995ce56f97a12'
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
