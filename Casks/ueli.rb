cask 'ueli' do
  version '8.8.0'
  sha256 'ce24b8e1de20e19d168b7d6337db5648d0eec9d64726cd9b2ca031b011f516d8'

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
