cask 'ueli' do
  version '8.6.2'
  sha256 '14c05e7edabd9c13ba94b9dedc4b7c7b128a544e9163f45a7e63ac05f39057e9'

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
