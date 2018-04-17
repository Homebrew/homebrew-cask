cask 'teamsql' do
  version '3.2.195'
  sha256 'e4c0a92cba73c5c50f977a13538674ce8ca6af591d8e456fcbbc22c5611448b8'

  # dlpuop5av9e02.cloudfront.net/osx/stable was verified as official when first introduced to the cask
  url "https://dlpuop5av9e02.cloudfront.net/osx/stable/#{version}/TeamSQL-#{version}.dmg"
  name 'TeamSQL'
  homepage 'https://teamsql.io/'

  auto_updates true

  app 'TeamSQL.app'

  zap trash: [
               '~/Library/Application Support/TeamSQL',
               '~/Caches/io.teamsql.desktop*',
               '~/Library/Caches/io.teamsql.desktop*',
               '~/Library/Cookies/io.teamsql.desktop.binarycookies',
               '~/Library/Preferences/ByHost/io.teamsql.desktop*',
               '~/Library/Preferences/io.teamsql.desktop*',
               '~/Library/Saved Application State/io.teamsql.desktop.savedState',
             ]
end
