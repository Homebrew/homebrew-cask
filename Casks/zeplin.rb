cask 'zeplin' do
  version '2.8.2,822'
  sha256 '43837e10257df9fcfd905cce9b45d37b54f37903f0492ef8b8f8d1f19b4aee5a'

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
