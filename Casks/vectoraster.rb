cask 'vectoraster' do
  version '7.0.9'
  sha256 '3c38d964266f47d148fbe1b0dac58fa75b44c1562420555a07d7185db00a2244'

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
