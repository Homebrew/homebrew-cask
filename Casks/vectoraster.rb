cask 'vectoraster' do
  version '7.2.6'
  sha256 '4998eeeb0660df95d73c903c23292fa7135b2f7866e4933f102a3b9ae627e9a1'

  url "https://www.lostminds.com/downloads/vectoraster#{version.major}.dmg"
  appcast "https://www.lostminds.com/vectoraster#{version.major}/version_history.php",
          checkpoint: 'fec3dd5b67a68f8a251e5230d06192306c110b0c037b1352ad0771977a4cabfa'
  name 'Vectoraster'
  homepage "https://www.lostminds.com/vectoraster#{version.major}/"

  app 'Vectoraster.app'

  zap trash: [
               '~/Library/Caches/com.lostminds.Vectoraster',
               '~/Library/Preferences/com.lostminds.Vectoraster.plist',
               '~/Library/Application Support/Vectoraster',
             ]
end
