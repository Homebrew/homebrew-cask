cask 'ueli' do
  version '8.7.1'
  sha256 'caa7722348cdd4cb5e2eafa17777efec5fcfa35abbb8057319d13d6b328c299a'

  # github.com/oliverschwendener/ueli/ was verified as official when first introduced to the cask
  url "https://github.com/oliverschwendener/ueli/releases/download/v#{version}/ueli-#{version}.dmg"
  appcast 'https://github.com/oliverschwendener/ueli/releases.atom'
  name 'Ueli'
  homepage 'https://ueli.app/'

  app 'ueli.app'

  uninstall quit: 'ueli'

  zap trash: [
               '~/Library/Logs/ueli',
               '~/Library/Application Support/ueli',
               '~/Library/Preferences/com.electron.ueli.plist',
             ]
end
