cask 'touche' do
  version '1.1.3'
  sha256 '787494f695f33b2f1eb9ccfc522f7bbc5bc8aae72d393e1948b29e0b6b4a3ddd'

  url "https://red-sweater.com/touche/Touch%C3%A9#{version}.zip"
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
