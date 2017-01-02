cask 'tiptyper' do
  if MacOS.version <= :snow_leopard
    version '2.1.2'
    sha256 '5f862ea7d68548569c9b038f8cc8e542e07ae21b26462e75442f28ba2d4088ad'
    url "https://www.brunophilipe.com/software/tiptyper/releases/releasen-#{version}.zip"
  else
    version '2.7.1'
    sha256 'dc1191110c1bfd470e654189b432251aec075db876ef1740b3a19db711eaf27c'
    url "https://www.brunophilipe.com/software/tiptyper/releases/releasen-#{version}.zip"
    appcast 'https://www.brunophilipe.com/software/tiptyper/versioninfo/appcast.php',
            checkpoint: 'e60dde8ebe9b27a75b53278339a54e9ce67e6912a70264b51384c4a7edeb4b1f'
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
