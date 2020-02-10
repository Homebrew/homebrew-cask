cask 'xrg' do
  version '2.8.0'
  sha256 '1b90b6e4cafc7a6af8f28579b71d4b1ae083d888d6a003bce62e515f2db033fc'

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
