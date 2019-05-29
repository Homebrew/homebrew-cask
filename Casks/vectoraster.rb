cask 'vectoraster' do
  version '7.4.1'
  sha256 '70251678707654f252c9b0e2d070300cd206b20153c7c059209fb6065bf50b15'

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
