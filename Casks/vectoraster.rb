cask 'vectoraster' do
  version '7.2.5'
  sha256 '1c685fa7d507c447f37c6d72e0da2bb2d956c8424d8aa2a0e2eed1dab975348b'

  url "https://www.lostminds.com/downloads/vectoraster#{version.major}.dmg"
  appcast "https://www.lostminds.com/vectoraster#{version.major}/version_history.php",
          checkpoint: '001dbe0570906ae686dd46679e5c4b84649de1540a340046bfa05850ad35acfb'
  name 'Vectoraster'
  homepage "https://www.lostminds.com/vectoraster#{version.major}/"

  app 'Vectoraster.app'

  zap trash: [
               '~/Library/Caches/com.lostminds.Vectoraster',
               '~/Library/Preferences/com.lostminds.Vectoraster.plist',
               '~/Library/Application Support/Vectoraster',
             ]
end
