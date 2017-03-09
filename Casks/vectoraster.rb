cask 'vectoraster' do
  version '7.0.7'
  sha256 '70da016d3c04f590a0adb3922ba65e54661f95b4b6a6670fdd963ede4052fa40'

  url "https://www.lostminds.com/downloads/dl.php?vectoraster#{version.major}.zip"
  name 'Vectoraster'
  homepage 'https://www.lostminds.com/content/product.php?vectoraster6'

  app "Vectoraster #{version.major}/Vectoraster.app"

  zap delete: [
                '~/Library/Caches/com.lostminds.Vectoraster',
                '~/Library/Preferences/com.lostminds.Vectoraster.plist',
                '~/Library/Application Support/Vectoraster',
              ]
end
