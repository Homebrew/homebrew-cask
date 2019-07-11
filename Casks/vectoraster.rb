cask 'vectoraster' do
  version '7.4.4'
  sha256 '3c218dab7f1f017cfc3fb90b2022173d8197ff1cc76799ae665dfde195fc1f6c'

  url "https://www.lostminds.com/downloads/vectoraster#{version.major}.dmg"
  appcast "https://www.lostminds.com/vectoraster#{version.major}/version_history.php"
  name 'Vectoraster'
  homepage "https://www.lostminds.com/vectoraster#{version.major}/"

  app 'Vectoraster.app'

  zap trash: [
               '~/Library/Caches/com.lostminds.Vectoraster',
               '~/Library/Preferences/com.lostminds.Vectoraster.plist',
               '~/Library/Application Support/Vectoraster',
             ]
end
