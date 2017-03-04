cask 'vectoraster' do
  version '7.0.5'
  sha256 '99b8b83121c8c4eb50f790ba48a9f21ca1bddf6c14fe1a80014a014ea7f876ad'

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
