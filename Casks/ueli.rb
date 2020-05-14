cask 'ueli' do
  version '8.7.0'
  sha256 'ceaeb1782283acaa086fd3ed1eb6f40dfc2c4fb9b151343bd9adc611f004c225'

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
