cask 'whatroute' do
  version '2.0.19'
  sha256 'c62676d26d60a2726831728fc8e852671f3a513a74ab9edab1a2a9be34e6e350'

  url "https://downloads.whatroute.net/software/whatroute-#{version}.zip"
  name 'WhatRoute'
  homepage 'https://www.whatroute.net/'

  depends_on macos: '>= :yosemite'

  app 'WhatRoute.app'

  zap delete: [
                '/Library/LaunchDaemons/net.whatroute.whatroute2helper.plist',
                '/Library/PrivilegedHelperTools/net.whatroute.whatroute2helper',
                '~/Library/Caches/net.whatroute.whatroute2',
                '~/Library/Logs/net.whatroute.whatroute2',
                '~/Library/Preferences/net.whatroute.whatroute2.plist',
              ]
end
