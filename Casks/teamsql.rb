cask 'teamsql' do
  version '4.0.379'
  sha256 '5e95023537922dc0a3f2b17daae760e442142b1e879442cf652c273cabbc9796'

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
