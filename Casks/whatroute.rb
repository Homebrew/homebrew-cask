cask 'whatroute' do
  version '2.0.18'
  sha256 'f3711fd45c0257267ac7439962260b9205304b7de70fa7efe12c8359153a099c'

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
