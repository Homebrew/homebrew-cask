cask 'whatroute' do
  version '2.0.17'
  sha256 '63a13c326a41b4652c291aa0f441d608522a9ab1346e4dcfc5154576e7a47186'

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
