cask 'zeplin' do
  version '2.8.3,832'
  sha256 '8c9dace7ba00caa04e18cac71bc3283f4546071149730f05f2b459a342c50589'

  url 'https://api.zeplin.io/urls/download-mac'
  appcast 'https://rink.hockeyapp.net/api/2/apps/8926efffe734b6d303d09f41d90c34fc'
  name 'Zeplin'
  homepage 'https://zeplin.io/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Zeplin.app'

  zap trash: [
               '~/Library/Logs/Zeplin',
               '~/Library/Caches/io.zeplin.osx',
               '~/Library/Preferences/io.zeplin.osx.plist',
             ]
end
