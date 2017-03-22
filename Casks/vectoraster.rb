cask 'vectoraster' do
  version '7.0.8'
  sha256 'e4089f97ff86d5296886150dcfc2878cf999432c99085aa424632e801d345964'

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
