cask 'teamsql' do
  version '1.1.111'
  sha256 'f0c52ad4b4c044500312a3d31b203b652738bbecb2001d974c5f68be9652b5ff'

  # dlpuop5av9e02.cloudfront.net was verified as official when first introduced to the cask
  url "https://dlpuop5av9e02.cloudfront.net/osx/stable/#{version}/TeamSQL-#{version}.dmg"
  appcast 'https://teamsql.io/whats-new',
          checkpoint: '6c39bad7de24cb5bf9798f785f3b69d8de9da3e144ee9f883f3b377516b6341a'
  name 'TeamSQL'
  homepage 'https://teamsql.io/'

  app 'TeamSQL.app'

  zap delete: [
                '/private/var/db/BootCaches/*/app.io.teamsql.desktop.playlist',
                '/private/var/folders/*/*/C/io.teamsql.desktop',
                '/private/var/folders/*/*/T/io.teamsql.desktop*',
                '~/Caches/io.teamsql.desktop*',
                '~/Library/Application Support/TeamSQL',
                '~/Library/Caches/io.teamsql.desktop*',
                '~/Library/Cookies/io.teamsql.desktop.binarycookies',
                '~/Library/Preferences/ByHost/io.teamsql.desktop*',
                '~/Library/Preferences/io.teamsql.desktop*',
                '~/Library/Saved Application State/io.teamsql.desktop.savedState',
              ]
end
