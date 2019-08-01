cask 'touche' do
  version '1.1.4'
  sha256 '275a2885214befd088fe20707f306d3ad1743cf8181334ed4ef976391fff6c7f'

  url "https://red-sweater.com/touche/Touche#{version}.zip"
  appcast 'https://red-sweater.com/touche/appcast.php'
  name 'Touché'
  homepage 'https://red-sweater.com/touche/'

  depends_on macos: '>= :sierra'

  app 'Touché.app'

  zap trash: [
               '~/Library/Containers/com.red-sweater.touche',
               '~/Library/Preferences/com.red-sweater.touche.plist',
             ]
end
