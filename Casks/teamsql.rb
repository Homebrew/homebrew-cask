cask 'teamsql' do
  version '3.3.203'
  sha256 'd13e00db85ab62b38ef3a8122d757b252a780ab12315922532e26ce1036a29bb'

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
