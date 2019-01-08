cask 'whatroute' do
  version '2.1.12'
  sha256 '86259a2f57b4e5eaacaeefe32e14cb467de0746b7adb8af4423e4faf2ecd271d'

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
