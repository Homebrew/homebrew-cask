cask 'vectoraster' do
  version '7.4.3'
  sha256 '42e2d6f21849b07d01e3a9c888ae18b86bfd1a5e1e201da8af4c80bbb6884b74'

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
