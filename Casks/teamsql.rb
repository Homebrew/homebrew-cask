cask 'teamsql' do
  version '3.2.190'
  sha256 'ab00986145f6b1c981856fb6c2da301a696cca4b37ca6fb315c519ff2e707a3c'

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
