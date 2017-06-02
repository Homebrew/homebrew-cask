cask 'whatroute' do
  version '2.0.21'
  sha256 '7d9c727c7c3a690f1f26669f9d307c6d84f858824541a7cb9049a960223e16cb'

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
