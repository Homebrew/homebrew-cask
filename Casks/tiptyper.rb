cask 'tiptyper' do
  version '2.7.2'
  sha256 'cab91b85d5a1a731a36fe6612d8ec397783c33ed469c2a2a087364226d9b4b70'

  url "https://www.brunophilipe.com/software/tiptyper/releases/releasen-#{version}.zip"
  appcast 'https://www.brunophilipe.com/software/tiptyper/versioninfo/appcast.php'
  name 'TipTyper'
  homepage 'https://www.brunophilipe.com/software/tiptyper/'

  auto_updates true

  app 'TipTyper.app'

  zap trash: [
               '~/Library/Caches/com.brunophilipe.TipTyper',
               '~/Library/Preferences/com.brunophilipe.TipTyper.plist',
             ]
end
