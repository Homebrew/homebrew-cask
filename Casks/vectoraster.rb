cask 'vectoraster' do
  version '7.2.4'
  sha256 'c0106135c408d80236e6901899e6e9e4a3b808dfcf747f248af2861d9e7cd207'

  url "https://www.lostminds.com/downloads/vectoraster#{version.major}.dmg"
  appcast "https://www.lostminds.com/vectoraster#{version.major}/version_history.php",
          checkpoint: 'd6a4c659d08fed92c43d59b189321b12b7b66b7ca11cff8c4599f66af2d53020'
  name 'Vectoraster'
  homepage "https://www.lostminds.com/vectoraster#{version.major}/"

  app 'Vectoraster.app'

  zap trash: [
               '~/Library/Caches/com.lostminds.Vectoraster',
               '~/Library/Preferences/com.lostminds.Vectoraster.plist',
               '~/Library/Application Support/Vectoraster',
             ]
end
