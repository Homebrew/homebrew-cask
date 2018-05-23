cask 'tiptyper' do
  if MacOS.version <= :snow_leopard
    version '2.1.2'
    sha256 '5f862ea7d68548569c9b038f8cc8e542e07ae21b26462e75442f28ba2d4088ad'
    url "https://www.brunophilipe.com/software/tiptyper/releases/releasen-#{version}.zip"
  else
    version '2.7.2'
    sha256 'cab91b85d5a1a731a36fe6612d8ec397783c33ed469c2a2a087364226d9b4b70'
    url "https://www.brunophilipe.com/software/tiptyper/releases/releasen-#{version}.zip"
    appcast 'https://www.brunophilipe.com/software/tiptyper/versioninfo/appcast.php',
            checkpoint: 'c268bbec3ce71997b195c3b6fd97020eebd3d753251c4d5eee1f2f9b02a50f3f'
  end

  name 'TipTyper'
  homepage 'https://www.brunophilipe.com/software/tiptyper/'

  auto_updates true

  app 'TipTyper.app'

  zap trash: [
               '~/Library/Caches/com.brunophilipe.TipTyper',
               '~/Library/Preferences/com.brunophilipe.TipTyper.plist',
             ]
end
