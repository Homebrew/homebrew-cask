cask 'tiptyper' do
  if MacOS.release <= :snow_leopard
    version '2.1.2'
    sha256 '5f862ea7d68548569c9b038f8cc8e542e07ae21b26462e75442f28ba2d4088ad'
    url "https://www.brunophilipe.com/software/tiptyper/releases/releasen-#{version}.zip"
  else
    version '2.6.4'
    sha256 '76e14095a1816f9d1902d0aec390a724d2c10622c048e964ca46d854cfab71ca'
    url "https://www.brunophilipe.com/software/tiptyper/releases/releasen-#{version}.zip"
    appcast 'https://www.brunophilipe.com/software/tiptyper/versioninfo/appcast.php',
            checkpoint: '2cf35f97bb203befea37d8161ebeb2535bc3bbc8464e39b60d5120d371767aae'
  end

  name 'TipTyper'
  homepage 'https://www.brunophilipe.com/software/tiptyper/'
  license :gpl

  auto_updates true

  app 'TipTyper.app'

  zap delete: [
                '~/Library/Caches/com.brunophilipe.TipTyper',
                '~/Library/Preferences/com.brunophilipe.TipTyper.plist',
              ]
end
