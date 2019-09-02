cask 'zeplin' do
  version '2.6,737'
  sha256 'ada6f960bfa27bdac5090a5594122867586ff7dc5eab598197719de6b225f637'

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
