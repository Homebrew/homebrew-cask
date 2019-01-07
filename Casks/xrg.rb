cask 'xrg' do
  version '2.6.0'
  sha256 '682f0ccea561b6362d5eeb9e25bf1f611f223137908c692769f518ebda861f9b'

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
