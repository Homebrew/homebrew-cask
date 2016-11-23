cask 'tiptyper' do
  if MacOS.version <= :snow_leopard
    version '2.1.2'
    sha256 '5f862ea7d68548569c9b038f8cc8e542e07ae21b26462e75442f28ba2d4088ad'
    url "https://www.brunophilipe.com/software/tiptyper/releases/releasen-#{version}.zip"
  else
    version '2.7'
    sha256 'ec9b114764ce348c13407a672ea55489d2070ae5372fc9474f717ec0d943d8d9'
    url "https://www.brunophilipe.com/software/tiptyper/releases/releasen-#{version}.zip"
    appcast 'https://www.brunophilipe.com/software/tiptyper/versioninfo/appcast.php',
            checkpoint: 'ac97ae5bfcb64305adf50b72484d70095993c6fc61b3a339f76f628bb4efed19'
  end

  name 'TipTyper'
  homepage 'https://www.brunophilipe.com/software/tiptyper/'

  auto_updates true

  app 'TipTyper.app'

  zap delete: [
                '~/Library/Caches/com.brunophilipe.TipTyper',
                '~/Library/Preferences/com.brunophilipe.TipTyper.plist',
              ]
end
