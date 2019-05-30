cask 'vectoraster' do
  version '7.4.2'
  sha256 '70eb208535bf1bd1c64c83913d70f0b615a677047851892dfd9890c446c5ec9e'

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
