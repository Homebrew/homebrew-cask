cask 'whatroute' do
  version '2.1.11'
  sha256 '2e12624708d1267da0f960b5cddb369dfb46681a12c4bf36f4929287f1c67d97'

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
