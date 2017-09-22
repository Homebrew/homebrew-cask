cask 'teamsql' do
  version '1.4.122'
  sha256 'e968850dcf4834f1e869cfaa0a9b72611a5cd3ed0f34fce4706ebc45fa694515'

  # dlpuop5av9e02.cloudfront.net/osx/stable was verified as official when first introduced to the cask
  url "https://dlpuop5av9e02.cloudfront.net/osx/stable/#{version}/TeamSQL-#{version}.dmg"
  appcast 'https://teamsql.io/whats-new',
          checkpoint: '1cc8eb8366a6a29f4c0a139fd759fe4a77ff0b9155767ac56ceb631b7982549f'
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
