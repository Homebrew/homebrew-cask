cask 'vectoraster' do
  version '6.2.5'
  sha256 '363bf4c718e0be1fc130e8c00b8e61630b332dc173272fcfce5408c080db2c87'

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
