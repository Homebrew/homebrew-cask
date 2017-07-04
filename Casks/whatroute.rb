cask 'whatroute' do
  version '2.0.22'
  sha256 '3d78079f4d0bf72de5d02c5c1b8edcb60909ce6ca3053cbb7135a8f89fa968e1'

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
