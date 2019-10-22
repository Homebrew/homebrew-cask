cask 'xrg' do
  version '2.7.0'
  sha256 '2772d6eea11429c4bbd74e3fa1f4a5acb04d35d80afdb10634292f0f5a465ded'

  url "https://download.gauchosoft.com/xrg/XRG-release-#{version}.zip"
  appcast 'https://gauchosoft.com/Products/XRG/'
  name 'XRG'
  homepage 'https://gauchosoft.com/Products/XRG/'

  app 'XRG.app'

  zap trash: [
               '~/Library/Caches/com.apple.helpd/Generated/XRG Help*',
               '~/Library/Caches/com.piatekjimenez.XRG',
               '~/Library/Cookies/com.piatekjimenez.XRG.binarycookies',
               '~/Library/Preferences/com.piatekjimenez.XRG.plist',
             ]
end
