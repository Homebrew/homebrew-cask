cask 'teamsql' do
  version '2.2.132'
  sha256 '487d100881c89d5778f6eb8389a074ccb273afb09670add44fe20af6de83b001'

  # dlpuop5av9e02.cloudfront.net/osx/stable was verified as official when first introduced to the cask
  url "https://dlpuop5av9e02.cloudfront.net/osx/stable/#{version}/TeamSQL-#{version}.dmg"
  appcast 'https://teamsql.io/whats-new',
          checkpoint: 'ca593ee9b4645934c2f877a012cea6cf72da6f62e5a47b15e17ebef6d5852e51'
  name 'TeamSQL'
  homepage 'https://teamsql.io/'

  app 'TeamSQL.app'

  zap delete: [
                '~/Caches/io.teamsql.desktop*',
                '~/Library/Caches/io.teamsql.desktop*',
                '~/Library/Cookies/io.teamsql.desktop.binarycookies',
                '~/Library/Saved Application State/io.teamsql.desktop.savedState',
              ],
      trash:  [
                '~/Library/Application Support/TeamSQL',
                '~/Library/Preferences/ByHost/io.teamsql.desktop*',
                '~/Library/Preferences/io.teamsql.desktop*',
              ]
end
