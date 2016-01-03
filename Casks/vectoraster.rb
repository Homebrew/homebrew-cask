cask 'vectoraster' do
  version '6.2.2'
  sha256 'd0a6d68c403c34056586281ceb925018b6b4673c2a8fe4ad475f00fcf1ba981b'

  url "http://www.lostminds.com/downloads/dl.php?vectoraster#{version.to_i}.zip"
  name 'Vectoraster'
  homepage 'http://www.lostminds.com/content/product.php?vectoraster6'
  license :commercial

  app "Vectoraster #{version.to_i}/Vectoraster.app"

  zap :delete => [
                   '~/Library/Caches/com.lostminds.Vectoraster',
                   '~/Library/Preferences/com.lostminds.Vectoraster.plist',
                   '~/Library/Application Support/Vectoraster',
                 ]
end
