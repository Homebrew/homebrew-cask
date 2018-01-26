cask 'vectoraster' do
  version '7.1.3'
  sha256 'f5544a33ade247d414a78e03ee28d31cedc47a53124fc7ba70f3e1d24ed01da1'

  url "https://www.lostminds.com/downloads/vectoraster#{version.major}.dmg"
  appcast "https://www.lostminds.com/vectoraster#{version.major}/version_history.php",
          checkpoint: 'de4fac08ec06a435e29ae46e1ea07321d6f721a2baef7bfcdbca775f5c4f181e'
  name 'Vectoraster'
  homepage "https://www.lostminds.com/vectoraster#{version.major}/"

  app 'Vectoraster.app'

  zap trash: [
               '~/Library/Caches/com.lostminds.Vectoraster',
               '~/Library/Preferences/com.lostminds.Vectoraster.plist',
               '~/Library/Application Support/Vectoraster',
             ]
end
