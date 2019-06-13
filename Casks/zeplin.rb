cask 'zeplin' do
  version '2.4.3,702'
  sha256 '18a92cf56ad0754d428028e13e2974ab774b162601da099afb72cf45b5f2e4bb'

  url 'https://api.zeplin.io/urls/download-mac'
  appcast 'https://rink.hockeyapp.net/api/2/apps/8926efffe734b6d303d09f41d90c34fc'
  name 'Zeplin'
  homepage 'https://zeplin.io/'

  auto_updates true

  app 'Zeplin.app'

  zap trash: [
               '~/Library/Logs/Zeplin',
               '~/Library/Caches/io.zeplin.osx',
               '~/Library/Preferences/io.zeplin.osx.plist',
             ]
end
