cask 'teamsql' do
  version '1.3.117'
  sha256 'db044e789b2e6882a886d14d0576760b52968a3cca2fe03b0ea06b0d33cdf7e5'

  # dlpuop5av9e02.cloudfront.net/osx/stable was verified as official when first introduced to the cask
  url "https://dlpuop5av9e02.cloudfront.net/osx/stable/#{version}/TeamSQL-#{version}.dmg"
  appcast 'https://teamsql.io/whats-new',
          checkpoint: '36724deaed29c01892d36d87fffd79e450e826b33d409cbdedf3e1ee0c4325a5'
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
