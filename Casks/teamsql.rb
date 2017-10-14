cask 'teamsql' do
  version '2.1.127'
  sha256 'c42088adcbeb42973248f6f54430172adca477386a3db72dc3bb1f1d2fabc298'

  # dlpuop5av9e02.cloudfront.net/osx/stable was verified as official when first introduced to the cask
  url "https://dlpuop5av9e02.cloudfront.net/osx/stable/#{version}/TeamSQL-#{version}.dmg"
  appcast 'https://teamsql.io/whats-new',
          checkpoint: 'df6f5a929bda1168b146a0f1896e14985b75a95d62c59a4ff12abb195db60f93'
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
