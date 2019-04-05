cask 'teamsql' do
  version '4.0.392'
  sha256 '68fb2fa36d2a02c5623af247f69a0d37613040ee61801fdeebe1e1ec4f6b6011'

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
