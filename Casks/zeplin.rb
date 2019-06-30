cask 'zeplin' do
  version '2.5.1,723'
  sha256 '2daeaa07c2675c67cf295617b2b8e54b836242585f69991a07cb6fda4e9feee1'

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
